global _start     ; operating system now will able to call it outside executable.

section .text     ; section where the code lives

_start:           ; entry point

  mov rax, 60     ; specify a number of system call
  mov rdi, 1      ; specify a exit code
  syscall         ; make the syscall
