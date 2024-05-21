TITLE Fibonacci sequence

INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.stack 100h

.data
farray DWORD 10 DUP(?)
string BYTE "The result of 10 elements of Fibonnachi series is:",0
.code
Main Proc
    mov edx, OFFSET farray
    call Inp ;It takes first 2 as an input
    call Fib ;It makes the fibonacci series
    call Disp ;It display complete array of Fibonacci sequence
    call Disp2 ;It display complete array of Fibonacci sequence

Exit
Main endp

Inp Proc 
    mov edx, OFFSET farray
    call ReadInt
    mov [edx], eax
    add edx,4h
    call ReadInt
    mov [edx], eax
RET
Inp endp

Fib Proc 
    mov ecx,8
    L1:
        add edx,4h
        mov eax,[edx-8]
        add eax,[edx-4]
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
    add esi,4h
    LOOP L1
RET
Disp endp

Disp2 Proc
    mov esi,OFFSET farray
    mov ebx, TYPE farray
    mov ecx, LENGTHOF farray
    call dumpmem
RET
Disp2 endp
End main