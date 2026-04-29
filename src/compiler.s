    .text
    .globl main

    .globl OUT
OUT:
    .quad 65536
entry_point:
    pushq %rbp
    movq %rsp, %rbp
    subq $128, %rsp
    movq OUT(%rip), %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $46, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $120, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $46, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $103, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $105, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $102, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $58, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $117, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $104, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $36, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $52, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $50, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $120, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $121, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $95, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $105, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $58, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $117, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $104, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $99, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $102, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $105, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $58, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $117, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $104, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $109, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $113, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $115, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $44, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $37, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $98, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $99, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $121, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $95, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $112, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $111, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $105, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $110, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $108, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $97, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $118, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $32, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $114, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $101, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $116, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $10, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $0, %rax
    pushq %rax
    popq %rax
    pushq %rax
    movq -16(%rbp), %rax
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rbx
    popq %rax
    addq %rbx, %rax
    pushq %rax
    popq %rax
    movq %rax, -16(%rbp)
    pushq %rax
    movq $1, %rax
    pushq %rax
    popq %rax
    jmp .L_END_FUNC_0
.L_END_FUNC_0:
    leave
    ret
main:
    pushq %rbp
    movq %rsp, %rbp
    call entry_point
    leave
    ret

    .section .rodata
.L_STR_0:
    .asciz "factorial is %d\n"
