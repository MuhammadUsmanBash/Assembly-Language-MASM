TITLE EXercise 1
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data

    number DWORD ?
    ones Dword ?

.code
 main PROC
    call takeInput
    call calOnes
    call Display

  exit
main ENDP
takeInput Proc
    call readhex
    mov number,eax
RET
takeInput endp

calOnes Proc
    mov ecx,32
    mov ebx,0
    L1:
        rcl eax,1
        jnc notIncrement
        inc ebx
        notIncrement:
    LOOP L1
    mov ones,ebx
RET
calOnes endp

Display Proc
    mov eax,ones
    call writeint
RET
Display endp
END main

