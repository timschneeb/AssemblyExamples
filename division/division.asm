%include        'functions.asm'

SECTION .data
msg1        db      ' remainder '  

SECTION .text
global  _start
 
_start:
 
    mov     eax, 90     ; move our first number into eax
    mov     ebx, 8      ; move our second number into ebx
    div     ebx         ; divide eax by ebx

    call    iprint      ; call our integer print function on the quotient
    mov     eax, msg1   ; move our message string into eax
    call    sprint      ; call our string print function
    mov     eax, edx    ; move our remainder into eax
    call    iprintLF 
    
    call    quit
