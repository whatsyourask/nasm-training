global _multiplication

section .text

_multiplication:
  xor rax, rax    ; rax = 0
  mov rax, 10     ; rax = 10
  xor rdx, rdx    ; rdx = 0
  mov rdx, 3      ; rdx = 3
  mul rdx         ; mul for unsigned int
                  ; rax * rdx = rdx:rax
