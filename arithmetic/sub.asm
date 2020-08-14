global _decrease

section .text

_decrease:
  mov rcx, 10      ; rcx = 10
  mov rdx, 5       ; rdx = 5
  sub rcx, rdx     ; rcx = 5
  mov rax, rcx     ; rax = 5
  ret
