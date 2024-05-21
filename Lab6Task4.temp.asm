TITLE Fibonacci sequence

INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.stack 100h

.data
farray WORD 10 DUP(?)
string BYTE "The result of 10 elements of Fibonnachi series is:",0
.code
Main Proc
    mov edx, OFFSET farray
    call Inp
    call Fib
    call Disp

Exit
Main endp

Inp Proc 
    mov edx, OFFSET farray
    call ReadInt
    mov [edx], eax
    add edx,2h
    call ReadInt
    mov [edx], eax
RET
Inp endp

Fib Proc 
    mov ecx,8
    L1:
        add edx,2h
        mov eax,[edx-4]
        add eax,[edx-2]
        mov [edx],eax
    LOOP L1

RET
Fib endp

Disp Proc
    mov ecx,10
    mov esi,OFFSET farray
    mov edx,OFFSET string
    call writestring
    call crlf
    L1:
    mov eax,[esi]
    call writeint
    call crlf
    add esi,2h
    LOOP L1
RET
Disp endp
End main