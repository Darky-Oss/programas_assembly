BITS 32 ; 32 bits padrão 

section .data
    msg db "Sou um simples Shellcoden!", 0
    tam_msg EQU $-msg

section .text
    global _start

_start:

    mov edx, tam_msg
    mov ecx, msg
    mov ebx, 0x1
    mov eax, 0x1
    syscall

    mov eax, 0x1
    xor ebx, ebx ; return 0
    syscall
