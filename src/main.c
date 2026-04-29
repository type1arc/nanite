#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "lexer.h"
#include "parser.h"
#include "codegen.h"

void print_usage(const char* prog) {
    fprintf(stderr, "Usage: %s <source file> [-o <output.s>]\n", prog);
}

int main(int argc, char** argv) {
    if (argc < 2) {
        print_usage(argv[0]);
        return 1;
    }

    const char* input_file = argv[1];
    const char* output_file = "test.s";
    
    for (int i = 2; i < argc; i++) {
        if (strcmp(argv[i], "-o") == 0 && i + 1 < argc) {
            output_file = argv[++i];
        } else {
            fprintf(stderr, "Unknown option: %s\n", argv[i]);
            print_usage(argv[0]);
            return 1;
        }
    }

    FILE* f = fopen(input_file, "r");
    if (!f) {
        fprintf(stderr, "Cannot open file: %s\n", input_file);
        return 1;
    }

    fseek(f, 0, SEEK_END);
    long len = ftell(f);
    fseek(f, 0, SEEK_SET);

    char* src = malloc(len + 1);
    fread(src, 1, len, f);
    src[len] = '\0';
    fclose(f);

    lexer_init(src);
    
    AST_node* program = parse_program();
    
    if (!program || program->num_children == 0) {
        fprintf(stderr, "Error: No functions parsed from %s\n", input_file);
        free(src);
        return 1;
    }
    
    int has_entry = 0;
    for (int i = 0; i < program->num_children; i++) {
        if (program->children[i]->name && 
            strcmp(program->children[i]->name, "entry_point") == 0) {
            has_entry = 1;
            break;
        }
    }
    
    if (!has_entry) {
        fprintf(stderr, "Warning: No entry_point function found\n");
    }
    
    FILE* out = fopen(output_file, "w");
    if (!out) {
        fprintf(stderr, "Cannot open output file: %s\n", output_file);
        free(src);
        return 1;
    }
    
    codegen_program(program, out);
    fclose(out);

    free(src);
    fprintf(stderr, "Compiled %s -> %s\n", input_file, output_file);
    return 0;
}