global _negative

section .text

_negative:
  xor rax, rax  ; rax = 0
  mov rax, 10   ; rax = 10
  neg rax       ; rax = -10
  ret
