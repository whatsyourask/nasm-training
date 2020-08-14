global _sign_multiplication

section .text

_sign_multiplication:
  xor rax, rax          ; rax = 0
  mov rax, 10           ; rax = 10
  xor rdx, rdx          ; rdx = 0
  mov rdx, -3           ; rdx = -3
  imul rdx, rax         ; rdx * rax = rdx (result in the first register)
  imul rax, rdx         ; rax * rdx = rax
  ret
