BITS 64

global _start

_start:
    ; push "/bin/sh" to stack
    push 0x68
    mov rax, 0x732f2f2f6e69622f
    push rax
    ; move "pointer to '/bin/sh'" to rdi
    mov rdi, rsp
    mov rsi, 0x0
    mov rdx, 0x0
    mov rax, 0x3b
    syscall
