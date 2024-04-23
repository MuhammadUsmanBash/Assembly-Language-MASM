TITLE Copying a String (CopyStr.asm)
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data
source BYTE "This is the source string",0
target BYTE SIZEOF source DUP(0)
.code
main PROC
    mov esi,0 ; index register
    mov ebp, SIZEOF source - 1 
    mov ecx, SIZEOF source ; loop counter
L1:
    mov al, source[ebp] 
    mov target[esi], al 
    inc esi 
    dec ebp
loop L1 

    mov edx, OFFSET target+1
    call writestring

    mov esi, offset target
    mov ecx, SIZEOF target
    mov ebx, TYPE target
    call dumpmem

    exit
main ENDP
END main