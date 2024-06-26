TITLE EXercise 1
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data

    userSeconds DWORD ?
    initialMsg BYTE "Give the time in seconds: ",0
    hours DWORD 0
    minutes DWORD 0
    seconds DWORD 0
    remain DWORD ?
    hoursStr BYTE " hours : ",0
    minutesStr BYTE " minutes : ",0
    secondsStr BYTE " seconds : ",0

.code
 main PROC
    call Solution
    

  exit
main ENDP
takeInput Proc
    mov edx, offset initialMsg
    call writestring
    call readint
    mov userSeconds, eax
RET
takeInput endp

Solution Proc
    call takeInput
    mov eax,userSeconds
    mov ebx,3600
    cdq
    div ebx
    mov hours,eax
    mov remain,edx
    
    mov eax,remain
    mov ebx,60
    cdq
    div ebx
    mov minutes,eax
    mov seconds,edx
    call Display
exitfunc:
RET
Solution endp

Display Proc
    mov eax,hours
    call writeint
    mov edx, offset hoursStr
    call writestring
    mov eax,minutes
    call writeint
    mov edx, offset minutesStr
    call writestring
    mov eax,seconds
    call writeint
    mov edx, offset secondsStr
    call writestring
RET
Display endp
END main

