global _decrement

section .text

_decrement
  xor rax, rax    ; rax = 0
  add rax, 2      ; rax = 2
  dec rax         ; rax = 1
  ret
