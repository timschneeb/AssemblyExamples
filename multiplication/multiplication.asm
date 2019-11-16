%include        'functions.asm'
 
SECTION .text
global  _start
 
_start:
 
    mov     eax, 90     ; move our first number into eax
    mov     ebx, 9      ; move our second number into ebx
    mul     ebx         ; mul ebx to eax
    call    iprintLF    ; call our integer print with linefeed function
 
    call    quit
