global _start

section .text

_start:
  mov rax, 300      ; move into registers params of function
  mov rdx, 212
  call sum          ; use call to call function

  mov rax, 60
  xor rdi, rdi
  syscall
; sum(rax, rdx)
sum:
  add ax, dx       ; use params
  ret              ; ret func pops the caller address from the stack
