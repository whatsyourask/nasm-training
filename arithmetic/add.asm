global _adding

section .text

_adding:
  mov rcx, 10      ; rcx = 10
  mov rdx, 5       ; rdx = 5
  add rcx, rdx     ; rcx = 15
  mov rax, rcx     ; rax = 15 - result of func always saves in rax
  ret
