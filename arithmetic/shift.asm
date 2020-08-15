global _start

section .text

_start:
  xor rax, rax
  mov rax, 5      ; rax = 5 or 101 in binary
  shl rax, 2      ;   101 add to 0 to the end
                  ;   <<< left
                  ; 10100
  cmp rax, 20     ; 20 = 10100
  je go_shr
  ret

go_shr:           ; shl
  mov cl, 2
  shr rax, cl     ; 10100 remove bits from the end
                  ; >>>   right
                  ;   101
  cmp rax, 5
  je go_sar
  ret

go_sar:           ; sal
  xor rax, rax
  mov rax, -20    ; rax = -20
  sar rax, 2      ; for negative number to saving sign
  cmp rax, -4
  je go_rol
  ret

go_rol:           ; ror
  xor rax, rax
  mov rax, 1
  shl rax, 63     ; 1 >>> 1000...0000    ....
  rol rax, 4      ; 100...000 to 000...001000
  ret
