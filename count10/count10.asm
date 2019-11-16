%include 'functions.asm'
 
SECTION .text
global _start
 
_start:
 
    mov ecx, 0 ; ecx is initalised to zero.
 
nextNumber:
    inc     ecx
    mov     eax, ecx
    call    iprintLF        ; NOTE call our new integer printing function (itoa)
    cmp     ecx, 10
    jne     nextNumber
 
    call    quit
