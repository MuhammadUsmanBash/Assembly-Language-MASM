TITLE EXercise 1
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data

    userNumber DWORD ?
    Factorial DWORD ?
    mid DWORD ?
    initialMsg BYTE "Enter the value of n to calculate factorial(-1 to exit): ",0 
    overFlowMsg BYTE "Overflow Occured!! ",0 

.code
 main PROC
    
    call factorialCalc

  exit
main ENDP
takeInput Proc
    mov edx, offset initialMsg
    call writestring
    call readint
    mov userNumber,eax
RET
takeInput endp

factorialCalc Proc
start:
    call takeInput
    cmp eax,1
    mov eax,1
    je one
    mov mid,0
    mov eax,userNumber
    cmp eax,1
    jl exitfunc
    mov ecx,userNumber
    mov eax,ecx
    mov ebx,ecx
    sub ebx,1
    cdq
    mul ebx
    add mid,eax
    sub ecx,2
    L1:
        mov eax,ecx
        cmp eax,0
        je break
        cdq
        mov ebx,mid
        mul ebx
        mov mid,eax
        jc overflow
    Loop L1
    break:
        mov eax,mid
    one:
        mov Factorial,eax
        call Display
        jmp start
        overflow:
            mov edx, offset overFlowMsg
            call writestring
            call crlf
        jmp start
    exitfunc:
    RET
factorialCalc endp

Display Proc
    mov eax,Factorial
    call writeint
    call crlf
RET
Display endp
END main

