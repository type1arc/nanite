#include "lexer.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <ctype.h>

static const char* src;
static int pos;
static int current_line;

void lexer_init(const char* source) {
    src = source;
    pos = 0;
    current_line = 1;
}

static char peek() {
    return src[pos];
}

static char advance() {
    char c = src[pos++];
    if (c == '\n') current_line++;
    return c;
}

static void skip_whitespace() {
    while (1) {
        char c = peek();
        if (isspace(c)) {
            advance();
        } else if (c == '/' && src[pos + 1] == '/') {
            while (peek() != '\n' && peek() != '\0') {
                advance();
            }
        } else {
            break;
        }
    }
}

token lexer_next_token() {
    skip_whitespace();
    
    token tok;
    tok.line = current_line;
    tok.value = NULL;
    
    char c = peek();
    
    if (c == '\0') {
        tok.type = TOK_EOF;
        return tok;
    }
    
    if (isalpha(c) || c == '_') {
        int start = pos;
        while (isalnum(peek()) || peek() == '_') {
            advance();
        }
        int len = pos - start;
        tok.value = malloc(len + 1);
        strncpy(tok.value, src + start, len);
        tok.value[len] = '\0';
        
        if (strcmp(tok.value, "fn") == 0) tok.type = TOK_FN;
        else if (strcmp(tok.value, "ret") == 0) tok.type = TOK_RET;
        else if (strcmp(tok.value, "int32") == 0) tok.type = TOK_INT32;
        else if (strcmp(tok.value, "int8") == 0) tok.type = TOK_INT8;
        else if (strcmp(tok.value, "flt32") == 0) tok.type = TOK_FLT32;
        else if (strcmp(tok.value, "bool") == 0) tok.type = TOK_BOOL;
        else if (strcmp(tok.value, "true") == 0) tok.type = TOK_TRUE;
        else if (strcmp(tok.value, "false") == 0) tok.type = TOK_FALSE;
        else if (strcmp(tok.value, "str") == 0) tok.type = TOK_STR;
        else if (strcmp(tok.value, "if") == 0) tok.type = TOK_IF;
        else if (strcmp(tok.value, "else") == 0) tok.type = TOK_ELSE;
        else if (strcmp(tok.value, "while") == 0) tok.type = TOK_WHILE;
        else if (strcmp(tok.value, "struct") == 0) tok.type = TOK_STRUCT;
        else if (strcmp(tok.value, "break") == 0) tok.type = TOK_BREAK;
        else if (strcmp(tok.value, "continue") == 0) tok.type = TOK_CONTINUE;
        else if (strcmp(tok.value, "void") == 0) tok.type = TOK_VOID;
        else if (strcmp(tok.value, "cast") == 0) tok.type = TOK_CAST;
        else if (strcmp(tok.value, "logg") == 0) tok.type = TOK_LOGG;
        else if (strcmp(tok.value, "syscall") == 0) tok.type = TOK_SYSCALL;
        else if (strcmp(tok.value, "peek8") == 0) tok.type = TOK_PEEK8;
        else if (strcmp(tok.value, "poke8") == 0) tok.type = TOK_POKE8;
        else tok.type = TOK_IDENTIFIER;
        
        return tok;
    }
    
    if (isdigit(c)) {
        int start = pos;
        int has_dot = 0;
        while (isdigit(peek()) || (!has_dot && peek() == '.')) {
            if (peek() == '.') has_dot = 1;
            advance();
        }
        int len = pos - start;
        tok.value = malloc(len + 1);
        strncpy(tok.value, src + start, len);
        tok.value[len] = '\0';
        tok.type = has_dot ? TOK_FLOAT_LITERAL : TOK_NUMBER;
        return tok;
    }
    
    if (c == '"') {
        advance();
        int start = pos;
        while (peek() != '"' && peek() != '\0') {
            advance();
        }
        int len = pos - start;
        tok.value = malloc(len + 1);
        strncpy(tok.value, src + start, len);
        tok.value[len] = '\0';
        if (peek() == '"') advance();
        tok.type = TOK_STRING;
        return tok;
    }
    
    advance();
    switch (c) {
        case '(': tok.type = TOK_LPAREN; break;
        case ')': tok.type = TOK_RPAREN; break;
        case '{': tok.type = TOK_LBRACE; break;
        case '}': tok.type = TOK_RBRACE; break;
        case '[': tok.type = TOK_LBRACKET; break;
        case ']': tok.type = TOK_RBRACKET; break;
        case '.': tok.type = TOK_DOT; break;
        case ',': tok.type = TOK_COMMA; break;
        case ';': tok.type = TOK_SEMI; break;
        case '=': 
            if (peek() == '=') { advance(); tok.type = TOK_EQ_EQ; }
            else { tok.type = TOK_EQ; }
            break;
        case '!':
            if (peek() == '=') { advance(); tok.type = TOK_NOT_EQ; }
            break;
        case '<': 
            if (peek() == '=') { advance(); tok.type = TOK_LT_EQ; }
            else { tok.type = TOK_LT; }
            break;
        case '>': 
            if (peek() == '=') { advance(); tok.type = TOK_GT_EQ; }
            else { tok.type = TOK_GT; }
            break;
        case '+': tok.type = TOK_PLUS; break;
        case '-': tok.type = TOK_MINUS; break;
        case '*': tok.type = TOK_STAR; break;
        case '/': tok.type = TOK_SLASH; break;
        case ':':
            if (peek() == ':') {
                advance();
                tok.type = TOK_COLON_COLON;
            }
            break;
        case '|':
            if (peek() == '|') {
                advance();
                tok.type = TOK_OR;
            }
            break;
        case '&':
            if (peek() == '&') {
                advance();
                tok.type = TOK_AND;
            }
            break;
        default: tok.type = TOK_EOF;
    }
    
    return tok;
}

void lexer_cleanup() {
    // nothing to cleanup
}