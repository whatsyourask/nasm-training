global _start

section .data
  arr_byte db 0xef, 0xbe, 0xad, 0xde

section .text

_start:
  xor rax, rax
  mov rax, -1
  mov al, [rel arr_byte]    ; get first or 0x0d and push as _ _ _ ef

  shl rax, 8                ; shift on 8 bites
  mov al, [rel arr_byte + 1]; push 2d byte  _ _ be ef

  shl rax, 8                ; shift again
  mov al, [rel arr_byte + 2]; push 3d byte _ ad be ef

  shl rax, 8                ; shift again
  mov al, [rel arr_byte + 3]; push 4th byte de ad be ef
                            ; now we get rax  0xdeadbeef
  mov rax, 60               ; normal exit
  xor rdi, rdi
  syscall
