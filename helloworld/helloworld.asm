SECTION .data
msg db 'Hello World!!', 0Ah ; assign msg variable with your message string

SECTION .text
global _start

_start:
    mov     ebx, msg ; address pointer to msg
    mov     eax, ebx ; same for eax

nextchar: ; calculate string length
    cmp     byte [eax], 0 ; if eax (value, not pointer) is NULL...
    jz      finished ; ...jump to 'finished'
    inc     eax ; increment eax by one
    jmp     nextchar ; jump to 'nextchar'

finished:
    sub eax, ebx ; substract addresses (ebx-eax), save result to eax

    mov edx, eax ; set string length
    mov ecx, msg ; pointer to msg
    mov ebx, 1 ; select STDOUT
    mov eax, 4 ; invoke SYS_WRITE
    int 80h

    mov ebx, 0 ; exit code 0
    mov eax, 1 ; invoke SYS_EXIT
    int 80h
