TITLE swaping registers using stack

INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.stack 100h

.data

.code
Main Proc
    mov eax,1h 
    mov ebx,2h
    call dumpregs
    call Swap
    call dumpregs
Exit
Main endp

Swap Proc  
    push eax
    push ebx
    pop eax
    pop ebx
RET
Swap endp

End main