; hello world in assembly

global _start

section .text

_start:
  mov rax, 1            ; specify a syscall, it's equal to write syscall
  mov rdi, 1            ; specify a file descriptor, that equal to 1(stdout)
  mov rsi, HelloWorld   ; specify the address of hello world string
  mov rdx, 14           ; specify the size of string
  syscall               ; make the syscall

  mov rax, 60           ; specify a syscall, it's equal to exit syscall
  xor rdi, rdi          ; XOR will do the rdi is equal to zero
  syscall

section .data           ; section used to allocate a memory for initialized data

  HelloWorld: db "Hello, world!", 10  ; 10 is equal to '\n'
; db - 1 byte
