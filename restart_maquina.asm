section .data

section .text
global _start

_start:
    mov byte ptr [0xcf9], 0x06
    mov byte ptr [0xcfa], 0x00
    mov byte ptr [0xcfb], 0x00
    jmp $
 
 ; Provavelmente o código não rose em sua máquina 
 ; Esse código é apenas para fins de educação.

 ; 0xcf9 -> usado para controlar o reset da máquina
 ; 0x06 -> escrito no endereço de 0xcf9
