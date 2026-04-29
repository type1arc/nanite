#include "parser.h"
#include <stdlib.h>
#include <string.h>
#include <stdio.h>

static token current_tok;

static void advance() {
    current_tok = lexer_next_token();
}

static int expect(token_type type) {
    if (current_tok.type == type) {
        advance();
        return 1;
    }
    printf("Syntax Error on line %d\n", current_tok.line);
    exit(1);
    return 0;
}

AST_node* create_node(AST_node_type type) {
    AST_node* node = malloc(sizeof(AST_node));
    node->type = type;
    node->children = NULL;
    node->num_children = 0;
    node->value = NULL;
    node->name = NULL;
    node->expr_type = TYPE_UNKNOWN;
    return node;
}

void add_child(AST_node* parent, AST_node* child) {
    parent->num_children++;
    parent->children = realloc(parent->children, parent->num_children * sizeof(AST_node*));
    parent->children[parent->num_children - 1] = child;
}

static AST_node* parse_expression();
static AST_node* parse_block();

static AST_node* parse_primary() {
    AST_node* node = NULL;
    if (current_tok.type == TOK_STAR) {
        advance();
        node = create_node(AST_DEREF);
        add_child(node, parse_primary());
        return node;
    } else if (current_tok.type == TOK_NUMBER) {
        node = create_node(AST_NUMBER);
        node->value = strdup(current_tok.value);
        advance();
    } else if (current_tok.type == TOK_FLOAT_LITERAL) {
        node = create_node(AST_FLOAT);
        node->value = strdup(current_tok.value);
        advance();
    } else if (current_tok.type == TOK_TRUE || current_tok.type == TOK_FALSE) {
        node = create_node(AST_BOOL);
        node->value = strdup(current_tok.type == TOK_TRUE ? "1" : "0");
        advance();
    } else if (current_tok.type == TOK_LPAREN) {
        advance();
        node = parse_expression();
        expect(TOK_RPAREN);
    } else if (current_tok.type == TOK_STRING) {
        node = create_node(AST_STRING);
        node->value = strdup(current_tok.value);
        advance();
    } else if (current_tok.type == TOK_IDENTIFIER) {
        char* name = strdup(current_tok.value);
        advance();
        if (current_tok.type == TOK_COLON_COLON) {
            advance();
            if (current_tok.type == TOK_IDENTIFIER) {
                char full_name[256];
                snprintf(full_name, sizeof(full_name), "%s::%s", name, current_tok.value);
                free(name);
                name = strdup(full_name);
                advance();
            }
        }
        
        if (current_tok.type == TOK_LPAREN) {
            advance();
            node = create_node(AST_CALL);
            node->name = name;
            while (current_tok.type != TOK_RPAREN) {
                add_child(node, parse_expression());
                if (current_tok.type == TOK_COMMA) advance();
            }
            expect(TOK_RPAREN);
        } else {
            node = create_node(AST_IDENT);
            node->name = name;
        }
    } else if (current_tok.type == TOK_SYSCALL) {
        advance();
        expect(TOK_LPAREN);
        node = create_node(AST_SYSCALL);
        while (current_tok.type != TOK_RPAREN) {
            add_child(node, parse_expression());
            if (current_tok.type == TOK_COMMA) advance();
        }
        expect(TOK_RPAREN);
    } else if (current_tok.type == TOK_PEEK8) {
        advance();
        expect(TOK_LPAREN);
        node = create_node(AST_PEEK8);
        add_child(node, parse_expression());
        expect(TOK_RPAREN);
    } else if (current_tok.type == TOK_POKE8) {
        advance();
        expect(TOK_LPAREN);
        node = create_node(AST_POKE8);
        add_child(node, parse_expression());
        expect(TOK_COMMA);
        add_child(node, parse_expression());
        expect(TOK_RPAREN);
    }
    return node;
}

static AST_node* parse_expression() {
    AST_node* left = parse_primary();
    
    while (current_tok.type == TOK_PLUS || current_tok.type == TOK_MINUS ||
           current_tok.type == TOK_STAR || current_tok.type == TOK_SLASH ||
           current_tok.type == TOK_EQ_EQ || current_tok.type == TOK_NOT_EQ ||
           current_tok.type == TOK_LT || current_tok.type == TOK_GT ||
           current_tok.type == TOK_LT_EQ || current_tok.type == TOK_GT_EQ ||
           current_tok.type == TOK_EQ || current_tok.type == TOK_OR ||
           current_tok.type == TOK_AND) {
        AST_node* op_node = create_node(AST_BINOP);
        if (current_tok.type == TOK_EQ) {
            op_node->value = strdup("=");
            advance();
            add_child(op_node, left);
            add_child(op_node, parse_expression());
            return op_node;
        }
        
        if (current_tok.type == TOK_PLUS) op_node->value = strdup("+");
        else if (current_tok.type == TOK_MINUS) op_node->value = strdup("-");
        else if (current_tok.type == TOK_STAR) op_node->value = strdup("*");
        else if (current_tok.type == TOK_SLASH) op_node->value = strdup("/");
        else if (current_tok.type == TOK_EQ_EQ) op_node->value = strdup("==");
        else if (current_tok.type == TOK_NOT_EQ) op_node->value = strdup("!=");
        else if (current_tok.type == TOK_LT) op_node->value = strdup("<");
        else if (current_tok.type == TOK_GT) op_node->value = strdup(">");
        else if (current_tok.type == TOK_LT_EQ) op_node->value = strdup("<=");
        else if (current_tok.type == TOK_GT_EQ) op_node->value = strdup(">=");
        else if (current_tok.type == TOK_OR) op_node->value = strdup("||");
        else if (current_tok.type == TOK_AND) op_node->value = strdup("&&");
        
        advance();
        add_child(op_node, left);
        add_child(op_node, parse_primary());
        left = op_node;
    }
    
    return left;
}

static AST_node* parse_statement() {
    if (current_tok.type == TOK_INT32 || current_tok.type == TOK_INT8 ||
        current_tok.type == TOK_FLT32 || current_tok.type == TOK_BOOL || current_tok.type == TOK_STR) {
        char type_val[64];
        if (current_tok.type == TOK_INT32) strcpy(type_val, "int32");
        else if (current_tok.type == TOK_INT8) strcpy(type_val, "int8");
        else if (current_tok.type == TOK_FLT32) strcpy(type_val, "flt32");
        else if (current_tok.type == TOK_BOOL) strcpy(type_val, "bool");
        else if (current_tok.type == TOK_STR) strcpy(type_val, "str");
        advance();
        if (current_tok.type == TOK_STAR) {
            strcat(type_val, "*");
            advance();
        }
        
        AST_node* node = create_node(AST_VAR_DECL);
        node->value = strdup(type_val);
        node->name = strdup(current_tok.value);
        expect(TOK_IDENTIFIER);
        expect(TOK_EQ);
        add_child(node, parse_expression());
        expect(TOK_SEMI);
        return node;
    } else if (current_tok.type == TOK_RET) {
        advance();
        AST_node* node = create_node(AST_RET);
        if (current_tok.type != TOK_SEMI && current_tok.type != TOK_RBRACE) {
            add_child(node, parse_expression());
        }
        expect(TOK_SEMI);
        return node;
    } else if (current_tok.type == TOK_IF) {
        advance();
        AST_node* node = create_node(AST_IF);
        expect(TOK_LPAREN);
        add_child(node, parse_expression());
        expect(TOK_RPAREN);
        if (current_tok.type == TOK_LBRACE) {
            add_child(node, parse_block());
        } else {
            add_child(node, parse_statement());
        }
        if (current_tok.type == TOK_ELSE) {
            advance();
            if (current_tok.type == TOK_LBRACE) {
                add_child(node, parse_block());
            } else {
                add_child(node, parse_statement());
            }
        }
        return node;
    } else if (current_tok.type == TOK_WHILE) {
        advance();
        AST_node* node = create_node(AST_WHILE);
        expect(TOK_LPAREN);
        add_child(node, parse_expression());
        expect(TOK_RPAREN);
        if (current_tok.type == TOK_LBRACE) {
            add_child(node, parse_block());
        } else {
            add_child(node, parse_statement());
        }
        return node;
    } else if (current_tok.type == TOK_CAST) {
        advance();
        expect(TOK_LPAREN);
        char type_str[64] = "";
        if (current_tok.type == TOK_INT32) strcpy(type_str, "int32");
        else if (current_tok.type == TOK_INT8) strcpy(type_str, "int8");
        else if (current_tok.type == TOK_FLT32) strcpy(type_str, "flt32");
        else if (current_tok.type == TOK_BOOL) strcpy(type_str, "bool");
        else if (current_tok.type == TOK_STR) strcpy(type_str, "str");
        expect(current_tok.type);
        expect(TOK_STAR);
        expect(TOK_RPAREN);
        AST_node* node = create_node(AST_CAST);
        node->value = strdup(type_str);
        add_child(node, parse_primary());
        return node;
    } else if (current_tok.type == TOK_LOGG) {
        advance();
        expect(TOK_LPAREN);
        AST_node* node = create_node(AST_LOGG);
        add_child(node, parse_expression());
        expect(TOK_RPAREN);
        expect(TOK_SEMI);
        return node;
    } else {
        AST_node* expr = parse_expression();
        expect(TOK_SEMI);
        return expr;
    }
}

static AST_node* parse_block() {
    expect(TOK_LBRACE);
    AST_node* block = create_node(AST_BLOCK);
    while (current_tok.type != TOK_RBRACE && current_tok.type != TOK_EOF) {
        add_child(block, parse_statement());
    }
    expect(TOK_RBRACE);
    return block;
}

static AST_node* parse_func_decl() {
    expect(TOK_FN);
    AST_node* node = create_node(AST_FUNC_DECL);
    node->name = strdup(current_tok.value);
    expect(TOK_IDENTIFIER);
    
    expect(TOK_LPAREN);
    while (current_tok.type != TOK_RPAREN) {
        char type_val[64] = "";
        if (current_tok.type == TOK_INT32) strcpy(type_val, "int32");
        else if (current_tok.type == TOK_INT8) strcpy(type_val, "int8");
        else if (current_tok.type == TOK_FLT32) strcpy(type_val, "flt32");
        else if (current_tok.type == TOK_BOOL) strcpy(type_val, "bool");
        else if (current_tok.type == TOK_STR) strcpy(type_val, "str");
        else if (current_tok.type == TOK_VOID) strcpy(type_val, "void");
        advance();
        if (current_tok.type == TOK_STAR) {
            strcat(type_val, "*");
            advance();
        }
        
        AST_node* param = create_node(AST_IDENT);
        param->value = strdup(type_val);
        param->name = strdup(current_tok.value);
        expect(TOK_IDENTIFIER);
        add_child(node, param);
        
        if (current_tok.type == TOK_COMMA) advance();
    }
    expect(TOK_RPAREN);
    
    if (current_tok.type == TOK_INT32 || current_tok.type == TOK_INT8 ||
        current_tok.type == TOK_FLT32 || current_tok.type == TOK_BOOL || 
        current_tok.type == TOK_STR || current_tok.type == TOK_VOID) {
        char type_val[64] = "";
        if (current_tok.type == TOK_INT32) strcpy(type_val, "int32");
        else if (current_tok.type == TOK_INT8) strcpy(type_val, "int8");
        else if (current_tok.type == TOK_FLT32) strcpy(type_val, "flt32");
        else if (current_tok.type == TOK_BOOL) strcpy(type_val, "bool");
        else if (current_tok.type == TOK_STR) strcpy(type_val, "str");
        else if (current_tok.type == TOK_VOID) strcpy(type_val, "void");
        advance();
        if (current_tok.type == TOK_STAR) {
            strcat(type_val, "*");
            advance();
        }
        node->value = strdup(type_val);
    }
    if (current_tok.type == TOK_LBRACE) {
        add_child(node, parse_block());
    } else {
        expect(TOK_SEMI);
    }
    return node;
}

AST_node* parse_program() {
    advance();
    AST_node* program = create_node(AST_PROGRAM);
    while (current_tok.type != TOK_EOF) {
        if (current_tok.type == TOK_FN) {
            add_child(program, parse_func_decl());
        } else if (current_tok.type == TOK_INT32 || current_tok.type == TOK_INT8 ||
                   current_tok.type == TOK_FLT32 || current_tok.type == TOK_BOOL ||
                   current_tok.type == TOK_STR) {
            AST_node* gvar = create_node(AST_GLOBAL_VAR);
            char type_str[64] = "";
            if (current_tok.type == TOK_INT32) strcpy(type_str, "int32");
            else if (current_tok.type == TOK_INT8) strcpy(type_str, "int8");
            else if (current_tok.type == TOK_FLT32) strcpy(type_str, "flt32");
            else if (current_tok.type == TOK_BOOL) strcpy(type_str, "bool");
            else if (current_tok.type == TOK_STR) strcpy(type_str, "str");
            advance();
            gvar->value = strdup(type_str);
            gvar->name = strdup(current_tok.value);
            expect(TOK_IDENTIFIER);
            if (current_tok.type == TOK_EQ) {
                advance();
                if (current_tok.type == TOK_NUMBER) {
                    gvar->children = malloc(sizeof(AST_node*));
                    gvar->children[0] = create_node(AST_NUMBER);
                    gvar->children[0]->value = strdup(current_tok.value);
                    gvar->num_children = 1;
                    advance();
                }
            }
            expect(TOK_SEMI);
            add_child(program, gvar);
        } else {
            advance();
        }
    }
    return program;
}