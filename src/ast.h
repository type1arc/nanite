#ifndef AST_H
#define AST_H

#include "lexer.h"

typedef enum {
    TYPE_INT, TYPE_FLOAT, TYPE_BOOL, TYPE_PTR, TYPE_VOID, TYPE_UNKNOWN
} var_type;

typedef enum {
    AST_PROGRAM, AST_FUNC_DECL, AST_BLOCK, AST_VAR_DECL, AST_GLOBAL_VAR, AST_BINOP,
    AST_CALL, AST_IDENT, AST_NUMBER, AST_FLOAT, AST_BOOL, AST_STRING,
    AST_DEREF, AST_IF, AST_WHILE, AST_RET, AST_BREAK, AST_CONTINUE, AST_CAST, AST_LOGG, AST_SYSCALL, AST_PEEK8, AST_POKE8
} AST_node_type;

typedef struct AST_node {
    AST_node_type type;
    struct AST_node** children;
    int num_children;
    char* value;
    char* name;
    var_type expr_type;
} AST_node;

AST_node* create_node(AST_node_type type);
void add_child(AST_node* parent, AST_node* child);

#endif