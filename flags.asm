global _start

section .text

_start:
  xor rax, rax
  mov rax, 5        ; rax = 7
  xor rbx, rbx
  mov rbx, 7        ; rbx = 7
  cmp rax, rbx      ; rax - rbx = -2
                    ; not zero -> ZF(zero flag) = 0
                    ; negative -> SF(sign flag) = 1
  je location       ; jumps if equal -> je
