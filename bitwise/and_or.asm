global _start

section .text

_start:
  xor rax, rax
  mov al, 1110b     ; al = 1110
  xor rdx, rdx
  mov dl, 1010b     ; dl = 1010b
  and al, dl        ; al & dl, result in al

  or al, dl         ; al | dl, result in al
  ret
