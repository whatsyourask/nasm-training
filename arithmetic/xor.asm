global _start

section .text

_start:
  xor rax, rax
  mov al, 1010b
  xor rdx, rdx
  mov dl, 0101b
  xor al, dl        ; al ^ dl, result in al and equal to 1111b
  cmp al, 1111b       
  je equal

not_equal:
  xor rax, rax
  ret

equal
  mov rax, 1
  ret
