; Hello world with macro

global _start

section .text

%macro print 2
  mov rax, 1            ; specify a syscall, it's equal to write syscall
  mov rdi, 1            ; specify a file descriptor, that equal to 1(stdout)
  mov rsi, %1           ; specify the address of hello world string
  mov rdx, %2           ; specify the size of string
  syscall               ; make the syscall
%endmacro

%macro exit 1
  mov rax, 60           ; specify a syscall, it's equal to exit syscall
  mov rdi, %1           ; move to rdi exit code
  syscall
%endmacro

_start:
  print HelloWorld, 14

  exit 0

section .data           ; section used to allocate a memory for initialized data

  HelloWorld: db "Hello, world!", 10  ; 10 is equal to '\n'
; db - 1 byte
