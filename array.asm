global _start

LENGTH equ 10

section .bss
  an_array: resd LENGTH

section .text

_start:
  lea rbx, [rel an_array]     ; loads the address of an_array into rbx
  xor rcx, rcx                ; rcx - counter
  xor rax, rax                ; rax - value for an_array

loop:
  mov al, cl                  ; al = cl = 0
  shl al, 1                   ; al = cl * 2
  mov dword [rbx + rcx * 4], eax    ; an_array[i] = eax, i = rcx
  inc cl                      ; cl += 1
  cmp cl, LENGTH - 1          ; cl < length
  jnz loop

  xor rax, rax
  xor rcx, rcx

sum:
  add eax, dword [rbx + rcx * 4]  ; eax += an_array[i], where i = rcx
  inc cl                          ; cl += 1
  cmp cl, LENGTH - 1              ; cl < length
  jnz sum
  mov rax, 60
  xor rdi, rdi
  syscall
