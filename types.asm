section .data
  byte_data: db 1                  ; byte
  word_data: dw 666                ; word
  dword_data: dd 80000             ; dword
  qword_data: dq 9000000000        ; qword

section .text

global _start

_start:
  xor rax, rax
  mov al, [rel byte_data]          ; rel - means replace the absolute address to the relative
  xor rdx, rdx                      ;
