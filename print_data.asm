global _start

SYSCALL_WRITE equ 1
STDOUT equ 1

section .data:
  some_bytes: db '0', 10, 'K', 10
  LENGTH equ $ - some_bytes         ; current position - some_bytes = LENGTH

section .text:

_start:
  mov rax, SYSCALL_WRITE            ; rax = type of syscall
  mov rdi, STDOUT                   ; rdi = file descriptor
  mov rsi, some_bytes               ; rsi = output
  mov rdx, LENGTH                   ; rdx = LENGTH
  syscall
  mov rax, 60                       ; exit syscall
  xor rdi, rdi                      ; rdi = exit code = 0
  syscall
