global _start

section .text

_start:
  mov ax, 0xdead    ; 16-bit value
  push ax
  mov rax, 10000000000  ; 64-bit values
  push rax
  push word 300         ; with word

  pop ax                ; pop them back
  pop rax
  xor rax, rax
  pop ax

  mov rax, 60
  xor rdi, rdi
  syscall
