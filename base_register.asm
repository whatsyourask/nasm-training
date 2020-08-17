global _start

section .data
  arr_byte: dw 0xef, 0xbe, 0xad, 0xde

section .text

_start:
; [ base_register + index_register * scale + displacement ]
  xor rbx, rbx
  lea rbx, [rel arr_byte]     ; rbx = &arr_byte (address of arr_byte's head)

  xor rax, rax                ; return value
  xor rdx, rdx                ; index_register

  mov ax, [rbx + rdx * 2]     ; base + index * scale

  inc rdx
  shl rax, 16                 ; shift the 16 bits to the left

  mov ax, [rbx + rdx * 2]
  inc rdx
  shl rax, 16
  mov ax, [rbx + rdx * 2]
  inc rdx
  shl rax, 16
  mov ax, [rbx + rdx * 2]
  mov rax, 60               ; normal exit
  xor rdi, rdi
  syscall
; with loop:
; starts with 15 line
; xor rcx, rcx
; mov rcx, 4
;loop:
; mov ax, [rbx + rdx * 2]
; inc rdx
; shl rax, 16
; cmp rdx, rcx
; jne loop
; code with exit
