%include "macros.inc"

;./command_line_argc argv1 argv2

global _start

section .bss
  s resb 14

section .text

;stack:
;
;argc
;argv[0]
;argv[1]
;argv[2]
;...

_start:
  pop rax      ; pop argc
  pop rax      ; pop argv[0]
  pop rax      ; pop argv[1]
  pop rax      ; pop argv[2]
  exit 0
