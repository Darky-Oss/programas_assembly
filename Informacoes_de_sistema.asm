BITS 32
; Código funcional apenas no Linux 
; Se sua máquina for 64 bits mude os registradores "r"

section .data
    msg db 'Informacoes da maquina:', 0
    tam_msg equ $-msg

section .text
    global _start

_start:
    
    mov eax, 4
    mov ebx, 1
    mov ecx, msg
    mov edx, tam_msg
    int 0x80
    
    mov eax, 0x00
    mov ebx, 0x00
    mov ecx, 0x00
    mov edx, 0x00
    cpuid

    mov eax, 4
    mov ebx, 1
    mov ecx, edx
    mov edx, 4
    int 0x80

    mov eax, 1
    xor ebx, ebx
    int 0x80
