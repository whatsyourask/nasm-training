global _start

section .text

_start:
  xor rbx, rbx    ; count = 0
  mov rbx, 8      ; count = 8
  mov rdx, 4      ; num = 4
  xor rcx, rcx    ; i = 0

loop:
  add rdx, rdx    ; num += num
  inc rcx         ; i += 1
  cmp rcx, rbx
  jl loop         ; while(rcx < rbx)
  mov rax, rdx
  ret
