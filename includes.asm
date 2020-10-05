%include "macros.inc"

; with include

global _start

section .text

_start:
  print HelloWorld, 14
  exit 0

section .data           ; section used to allocate a memory for initialized data

  HelloWorld: db "Hello, world!", 10  ; 10 is equal to '\n'
; db - 1 byte
