global _jump

section .text

_jump:
  xor rax, rax    ; rax = 0
  mov rax, 512    ; rax = 512

_label:           ; label doesn't affect execution
  mov rax, 512    ; rax = 1024
  jmp jump1

jump1:
  add rax, rax    ; rax = 2048
  jump jump2

jump2:
  inc rax         ; rax = 2049
  ret
