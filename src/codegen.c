#include "codegen.h"
#include "ast.h"
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>

static int label_counter = 0;
static FILE* out;
static int current_func_label = 0;

#define MAX_STRINGS 128
static char* string_literals[MAX_STRINGS];
static int num_strings = 0;

static int add_string_literal(const char* str) {
    for (int i = 0; i < num_strings; i++) {
        if (strcmp(string_literals[i], str) == 0) return i;
    }
    if (num_strings < MAX_STRINGS) {
        string_literals[num_strings] = strdup(str);
        return num_strings++;
    }
    return -1;
}

#define MAX_VARS 64
static char* var_names[MAX_VARS];
static int var_offsets[MAX_VARS];
static int num_vars = 0;

static void clear_vars() {
    for (int i = 0; i < num_vars; i++) {
        free(var_names[i]);
        var_names[i] = NULL;
    }
    num_vars = 0;
}

static int get_var_offset(const char* name) {
    for (int i = 0; i < num_vars; i++) {
        if (var_names[i] && strcmp(var_names[i], name) == 0) {
            return var_offsets[i];
        }
    }
    return 0;
}

static int is_global_var(const char* name) {
    return 1;
}

static void add_var(const char* name, int offset) {
    if (num_vars >= MAX_VARS) return;
    var_names[num_vars] = strdup(name);
    var_offsets[num_vars] = offset;
    num_vars++;
}

static void emit(const char* fmt, ...) {
    va_list args;
    va_start(args, fmt);
    vfprintf(out, fmt, args);
    va_end(args);
}

static const char* get_param_reg(int idx) {
    static const char* regs[] = {"%rdi", "%rsi", "%rdx", "%rcx", "%r8", "%r9"};
    if (idx < 6) return regs[idx];
    return "%rax";
}

static void codegen_expr(AST_node* node);

static void codegen_call(AST_node* node) {
    int num_args = node->num_children;
    for (int i = 0; i < num_args; i++) {
        codegen_expr(node->children[i]);
    }
    
    for (int i = (num_args > 6 ? 6 : num_args) - 1; i >= 0; i--) {
        emit("    popq %s\n", get_param_reg(i));
    }
    
    char label[256];
    if (node->name) {
        strcpy(label, node->name);
        for (int i = 0; label[i]; i++) {
            if (label[i] == ':' && label[i+1] == ':') {
                label[i] = '_';
                memmove(&label[i+1], &label[i+2], strlen(&label[i+2]) + 1);
            }
        }
    } else {
        strcpy(label, "unknown");
    }
    emit("    call %s\n", label);
    
    if (num_args > 6) {
        emit("    addq $%d, %%rsp\n", (num_args - 6) * 8);
    }
    
    emit("    pushq %%rax\n");
}

static void codegen_expr(AST_node* node) {
    if (!node) return;
    
    switch (node->type) {
        case AST_NUMBER: {
            long val = atol(node->value);
            emit("    movq $%ld, %%rax\n", val);
            emit("    pushq %%rax\n");
            break;
        }
        case AST_FLOAT: {
            double val = atof(node->value);
            emit("    movq $%ld, %%rax\n", *(long*)&val);
            emit("    pushq %%rax\n");
            break;
        }
        case AST_BOOL: {
            int val = atoi(node->value);
            emit("    movq $%d, %%rax\n", val);
            emit("    pushq %%rax\n");
            break;
        }
        case AST_STRING: {
            int idx = add_string_literal(node->value);
            emit("    leaq .L_STR_%d(%%rip), %%rax\n", idx);
            emit("    pushq %%rax\n");
            break;
        }
        case AST_IDENT: {
            if (node->name) {
                int offset = get_var_offset(node->name);
                if (offset != 0) {
                    emit("    movq %d(%%rbp), %%rax\n", offset);
                } else if (is_global_var(node->name)) {
                    emit("    movq %s(%%rip), %%rax\n", node->name);
                } else {
                    emit("    movq 16(%%rbp), %%rax\n");
                }
                emit("    pushq %%rax\n");
            }
            break;
        }
        case AST_CALL: {
            codegen_call(node);
            break;
        }
        case AST_BINOP: {
            if (strcmp(node->value, "=") == 0) {
                if (node->children[0] && node->children[0]->type == AST_IDENT && node->children[0]->name) {
                    codegen_expr(node->children[1]);
                    emit("    popq %%rax\n");
                    int offset = get_var_offset(node->children[0]->name);
                    if (offset != 0) {
                        emit("    movq %%rax, %d(%%rbp)\n", offset);
                    } else if (is_global_var(node->children[0]->name)) {
                        emit("    movq %%rax, %s(%%rip)\n", node->children[0]->name);
                    }
                } else if (node->children[0] && node->children[0]->type == AST_DEREF) {
                    codegen_expr(node->children[1]); // value
                    codegen_expr(node->children[0]->children[0]); // addr
                    emit("    popq %%rcx\n"); // addr
                    emit("    popq %%rax\n"); // value
                    emit("    movq %%rax, (%%rcx)\n");
                }
                emit("    pushq %%rax\n");
                break;
            }
            
            if (node->children[0]) codegen_expr(node->children[0]);
            if (node->children[1]) codegen_expr(node->children[1]);
            
            emit("    popq %%rbx\n");
            emit("    popq %%rax\n");
            
            if (strcmp(node->value, "+") == 0) {
                emit("    addq %%rbx, %%rax\n");
            } else if (strcmp(node->value, "-") == 0) {
                emit("    subq %%rbx, %%rax\n");
} else if (strcmp(node->value, "*") == 0) {
                emit("    imulq %%rbx, %%rax\n");
            } else if (strcmp(node->value, "/") == 0) {
                emit("    cqo\n");
                emit("    idivq %%rbx\n");
            } else if (strcmp(node->value, "==") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    sete %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, "!=") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    setne %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, "<") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    setl %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, ">") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    setg %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, ">=") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    setge %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, "<=") == 0) {
                emit("    cmpq %%rbx, %%rax\n");
                emit("    setle %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, "||") == 0) {
                emit("    orq %%rbx, %%rax\n");
                emit("    setne %%al\n");
                emit("    movzbq %%al, %%rax\n");
            } else if (strcmp(node->value, "&&") == 0) {
                emit("    testq %%rax, %%rax\n");
                emit("    setne %%al\n");
                emit("    testq %%rbx, %%rbx\n");
                emit("    setne %%cl\n");
                emit("    andb %%cl, %%al\n");
                emit("    movzbq %%al, %%rax\n");
            }
            
            emit("    pushq %%rax\n");
            break;
        }
        case AST_DEREF: {
            codegen_expr(node->children[0]);
            emit("    popq %%rax\n");
            emit("    movq (%%rax), %%rax\n");
            emit("    pushq %%rax\n");
            break;
        }
        case AST_SYSCALL: {
            for (int i = 0; i < node->num_children; i++) {
                codegen_expr(node->children[i]);
            }
            if (node->num_children >= 7) { emit("    popq %%r9\n"); }
            if (node->num_children >= 6) { emit("    popq %%r8\n"); }
            if (node->num_children >= 5) { emit("    popq %%r10\n"); }
            if (node->num_children >= 4) { emit("    popq %%rdx\n"); }
            if (node->num_children >= 3) { emit("    popq %%rsi\n"); }
            if (node->num_children >= 2) { emit("    popq %%rdi\n"); }
            if (node->num_children >= 1) { emit("    popq %%rax\n"); }
            emit("    syscall\n");
            emit("    pushq %%rax\n");
            break;
        }
        case AST_PEEK8: {
            codegen_expr(node->children[0]);
            emit("    popq %%rax\n");
            emit("    movzbq (%%rax), %%rax\n");
            emit("    pushq %%rax\n");
            break;
        }
        case AST_POKE8: {
            codegen_expr(node->children[0]); // addr
            codegen_expr(node->children[1]); // val
            emit("    popq %%rbx\n"); // val
            emit("    popq %%rax\n"); // addr
            emit("    movb %%bl, (%%rax)\n");
            emit("    pushq %%rbx\n");
            break;
        }
        default:
            break;
    }
}

static void codegen_stmt(AST_node* node, int* var_offset);
static void codegen_block(AST_node* block, int* var_offset);

static void codegen_stmt(AST_node* node, int* var_offset) {
    if (!node) return;
    
    switch (node->type) {
        case AST_VAR_DECL: {
            if (node->name) {
                codegen_expr(node->children[0]);
                emit("    popq %%rax\n");
                emit("    movq %%rax, %d(%%rbp)\n", -*var_offset);
                add_var(node->name, -*var_offset);
                *var_offset += 8;
            }
            break;
        }
        case AST_RET: {
            if (node->num_children > 0) {
                codegen_expr(node->children[0]);
                emit("    popq %%rax\n");
            }
            emit("    jmp .L_END_FUNC_%d\n", current_func_label);
            break;
        }
        case AST_IF: {
            codegen_expr(node->children[0]);
            emit("    popq %%rax\n");
            emit("    cmpq $0, %%rax\n");
            char else_label[32], end_if_label[32];
            snprintf(else_label, sizeof(else_label), ".L_ELSE_%d", label_counter);
            snprintf(end_if_label, sizeof(end_if_label), ".L_END_IF_%d", label_counter);
            label_counter++;
            emit("    je %s\n", else_label);
            codegen_stmt(node->children[1], var_offset);
            emit("    jmp %s\n", end_if_label);
            emit("%s:\n", else_label);
            if (node->num_children > 2) {
                codegen_stmt(node->children[2], var_offset);
            }
            emit("%s:\n", end_if_label);
            break;
        }
        case AST_WHILE: {
            char start_label[32], end_while_label[32];
            snprintf(start_label, sizeof(start_label), ".L_WHILE_%d", label_counter);
            snprintf(end_while_label, sizeof(end_while_label), ".L_END_WHILE_%d", label_counter);
            label_counter++;
            emit("%s:\n", start_label);
            codegen_expr(node->children[0]);
            emit("    popq %%rax\n");
            emit("    cmpq $0, %%rax\n");
            emit("    je %s\n", end_while_label);
            codegen_stmt(node->children[1], var_offset);
            emit("    jmp %s\n", start_label);
            emit("%s:\n", end_while_label);
            break;
        }
        case AST_BLOCK: {
            codegen_block(node, var_offset);
            break;
        }
        case AST_LOGG: {
            codegen_expr(node->children[0]);
            emit("    popq %%rsi\n");
            
            int len_label = label_counter++;
            emit("    movq %%rsi, %%rdi\n");
            emit("    xorq %%rdx, %%rdx\n");
            emit(".L_STRLEN_%d:\n", len_label);
            emit("    cmpb $0, (%%rdi,%%rdx)\n");
            emit("    je .L_STRLEN_DONE_%d\n", len_label);
            emit("    incq %%rdx\n");
            emit("    jmp .L_STRLEN_%d\n", len_label);
            emit(".L_STRLEN_DONE_%d:\n", len_label);
            
            emit("    movq $1, %%rax\n");
            emit("    movq $1, %%rdi\n");
            emit("    syscall\n");
            
            // Print newline
            emit("    movq $1, %%rax\n");
            emit("    movq $1, %%rdi\n");
            emit("    pushq $10\n");
            emit("    movq %%rsp, %%rsi\n");
            emit("    movq $1, %%rdx\n");
            emit("    syscall\n");
            emit("    popq %%rax\n");
            break;
        }
        case AST_BINOP:
        case AST_CALL:
        case AST_SYSCALL:
        case AST_PEEK8:
        case AST_POKE8:
        case AST_IDENT:
        case AST_NUMBER:
        case AST_FLOAT:
        case AST_BOOL:
        case AST_STRING:
        case AST_DEREF: {
            codegen_expr(node);
            break;
        }
        default:
            break;
    }
}

static void codegen_block(AST_node* block, int* var_offset) {
    int start_offset = *var_offset;
    for (int i = 0; i < block->num_children; i++) {
        codegen_stmt(block->children[i], var_offset);
    }
    *var_offset = start_offset;
}

static void codegen_func(AST_node* node) {
    int var_offset = 56; // 6 params * 8 = 48, so start at 56
    int func_label = label_counter++;
    current_func_label = func_label;
    clear_vars();
    
    int num_params = node->num_children - 1;
    
    emit("%s:\n", node->name);
    emit("    pushq %%rbp\n");
    emit("    movq %%rsp, %%rbp\n");
    
    for (int i = 0; i < num_params && i < 6; i++) {
        AST_node* param = node->children[i];
        int offset = -8 * (i + 1);
        emit("    movq %s, %d(%%rbp)\n", get_param_reg(i), offset);
        if (param->name) {
            add_var(param->name, offset);
        }
    }
    
    emit("    subq $1024, %%rsp\n");
    
    codegen_block(node->children[node->num_children - 1], &var_offset);
    
    emit(".L_END_FUNC_%d:\n", func_label);
    emit("    leave\n");
    emit("    ret\n");
}

void codegen_program(AST_node* program, FILE* output) {
    out = output;
    label_counter = 0;
    num_strings = 0;
    
    emit("    .data\n");
    for (int i = 0; i < program->num_children; i++) {
        if (program->children[i]->type == AST_GLOBAL_VAR) {
            AST_node* gvar = program->children[i];
            emit("    .globl %s\n", gvar->name);
            emit("%s:\n", gvar->name);
            if (gvar->num_children > 0 && gvar->children[0]->type == AST_NUMBER) {
                emit("    .quad %s\n", gvar->children[0]->value);
            } else {
                emit("    .quad 0\n");
            }
        }
    }

    emit("    .text\n");
    emit("    .globl _start\n\n");
    
    for (int i = 0; i < program->num_children; i++) {
        if (program->children[i]->type == AST_FUNC_DECL) {
            AST_node* func = program->children[i];
            if (func->num_children > 0 && func->children[func->num_children - 1]->type == AST_BLOCK) {
                codegen_func(func);
            }
        }
    }
    
    emit("_start:\n");
    emit("    call entry_point\n");
    emit("    movq %%rax, %%rdi\n");
    emit("    movq $60, %%rax\n");
    emit("    syscall\n");
    
    emit("\n    .section .rodata\n");
    for (int i = 0; i < num_strings; i++) {
        emit(".L_STR_%d:\n", i);
        emit("    .asciz \"%s\"\n", string_literals[i]);
    }
}