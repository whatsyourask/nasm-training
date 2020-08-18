global _start

section .text

_start:
  sub rsp, 8        ; allocates 8 bites on the stack
  mov qword [rsp], 69   ; store the value 69


  xor rax, rax
  mov ax, 0xdead
  push ax
  mov rax, 0xdeadbeafdeadbead  ; move in rax qword
  push rax
  push word 300

  xor rax, rax
  mov ax, [rsp]       ; move in ax the last element (300)
  add ax, [rsp + 10]  ; get the first element pushed
                      ; first element was word(2 bytes)
                      ; second element was qword(8 bytes)
                      ; offset = 2 + 8 = 10
  pop dx              ; pop all
  pop rdx
  pop dx
  pop rdx             ; it's in case when we push some arguments to the stack

  mov rax, 60
  xor rdi, rdi
  syscall             ; normal exit
