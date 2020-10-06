section .data
  string db "Hello, World!!!", 10, 0
section .text
global _start

_start:
  mov rax, string
  call strlen

  mov rdx, rax
  mov rcx, string
  mov rbx, 1
  mov rax, 4
  int 80h

  mov rbx, 0
  mov rax, 1
  int 80h

strlen:
  push rbx
  mov rbx, rax

nextchar:
  cmp byte [rax], 0
  jz finished
  inc rax
  jmp nextchar

finished:
  sub rax, rbx
  pop rbx
  ret
