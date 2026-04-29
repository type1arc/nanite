#ifndef LEXER_H
#define LEXER_H

typedef enum {
    TOK_EOF, TOK_FN, TOK_RET, TOK_INT32, TOK_INT8, TOK_FLT32, TOK_BOOL,
    TOK_TRUE, TOK_FALSE, TOK_STR, TOK_IF, TOK_ELSE, TOK_WHILE, TOK_STRUCT,
    TOK_IDENTIFIER, TOK_NUMBER, TOK_FLOAT_LITERAL, TOK_STRING,
    TOK_LPAREN, TOK_RPAREN, TOK_LBRACE, TOK_RBRACE, TOK_LBRACKET, TOK_RBRACKET,
    TOK_DOT, TOK_COMMA, TOK_SEMI, TOK_EQ, TOK_PLUS, TOK_MINUS, TOK_STAR, TOK_SLASH,
    TOK_EQ_EQ, TOK_NOT_EQ, TOK_LT, TOK_GT, TOK_COLON_COLON, TOK_BREAK, TOK_CONTINUE,
    TOK_VOID, TOK_CAST, TOK_LOGG, TOK_OR, TOK_AND, TOK_SYSCALL, TOK_PEEK8, TOK_POKE8, TOK_LT_EQ, TOK_GT_EQ
} token_type;

typedef struct {
    token_type type;
    char* value;
    int line;
} token;

void lexer_init(const char* source);
token lexer_next_token();
void lexer_cleanup();

#endif