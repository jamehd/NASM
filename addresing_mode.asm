section .data
name db 'Zara Ali'
len equ $-name

section .text
    global _start

_start:
    ;writing the name
    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, len
    int 0x80

    mov [name], dword 'Nuha'    ;change name to Nuha Ali

    mov eax, 4
    mov ebx, 1
    mov ecx, name
    mov edx, len
    int 0x80

    mov eax, 1
    int 0x80