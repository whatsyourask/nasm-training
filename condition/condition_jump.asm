global _start

section .text

_start:
  xor rax, rax      ; rax = 0
  mov rax, 10       ; rax = 10
  cmp rax, 10       ; if (rax == 10)
  je condition1     ; true
  jne condition2    ; false

condition1:
  inc rax           ; rax = 11

condition2:
  dec rax           ; rax = 9
