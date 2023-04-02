section .data

section .text
global _start

_start:
    mov byte ptr [0xcf9], 0x06
    mov byte ptr [0xcfa], 0x00
    mov byte ptr [0xcfb], 0x00
    jmp $
 
