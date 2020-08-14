global _increment

section .text

_increment:
  xor rax, rax    ; rax = 0
  inc rax         ; rax = 1 (add rax, 1)
  ret
