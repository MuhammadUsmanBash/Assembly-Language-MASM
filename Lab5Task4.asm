TITLE Copying a String (CopyStr.asm)
INCLUDE Irvine32.inc
.data
source BYTE "This is the source string",0
target BYTE SIZEOF source DUP(0)
.code
main PROC
    mov esi,0 ; index register
    mov ecx, SIZEOF source ; loop counter
L1:
    mov al, source[esi] 
    mov target[esi], al 
    inc esi 
loop L1 

    mov edx, offset target
    call writestring

    mov esi, offset target
    mov ecx, SIZEOF target
    mov ebx, TYPE target
    call dumpmem

    exit
main ENDP
END main