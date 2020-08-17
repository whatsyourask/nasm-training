section .data
  byte_data: db 1                  ; byte
  word_data: dw 666                ; word
  dword_data: dd 80000             ; dword
  qword_data: dq 9000000000        ; qword

section .text

global _start

; ______________rax_______________
;                 _______eax______
;                         ___ax___
;  _ _ _ _ _ _ _ _ _ _ _ _ _ah _al
; |_ _ _ _ _ _ _ _|_ _ _ _|_ _|_ _|

_start:
  xor rax, rax
  mov al, [rel byte_data]          ; rel - means replace the absolute address to the relative

  xor rdx, rdx
  mov dx, [rel word_data]

  xor rcx, rcx
  mov ecx, [rel dword_data]

  xor rbx, rbx
  mov rbx, [rel qword_data]
