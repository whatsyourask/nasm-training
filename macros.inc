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
