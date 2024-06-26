TITLE EXercise 1
INCLUDE Irvine32.inc
.data

    number DWORD ?
    answer Dword ?

.code
 main PROC
    call takeInput
    call Multi
    call Display

  exit
main ENDP
takeInput Proc
    call readint
    mov number,eax
RET
takeInput endp

Multi Proc
    mov ebx,eax
    mov ecx,eax
    shl ebx,4
    shl ecx,2
    add eax,ebx
    add eax,ecx
RET
Multi endp

Display Proc
    mov answer,eax
    call writeint
RET
Display endp
END main

