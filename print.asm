global _start

section .data
  hello: db "Hello world!", 10   ; newline
  LENGTH1 equ $ - hello
  another_hello: db "Another hello world!", 10, 10
  LENGTH2 equ $ - another_hello

section .text
main:
  lea rdi, [rel hello]   ; pust the address of thehello in rdi
  mov rsi, LENGTH1      ; puts the length of the hello in rsi
  call print

  lea rdi, [rel another_hello]
  xor rsi, rsi
  mov rsi, LENGTH2
  call print

  mov rax, 60
  xor rdi, rdi
  syscall               ; normal exit

; print(syscall: rax, length: rdx, string: rsi, fd: rdi)
print:
  mov rax, 1
  mov rdx, rsi
  mov rsi, rdi
  mov rdi, 1
  syscall
  ret
