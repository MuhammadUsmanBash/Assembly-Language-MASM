TITLE EXercise 1
INCLUDE Irvine32.inc
.data

    var1 DWORD ?
    var2 DWORD ?
    var3 DWORD ?
    var4 DWORD ?
    varf DWORD ?
    vars DWORD ?

.code
 main PROC
    call takeInput
    call solveEquation
    call Display

  exit
main ENDP
takeInput Proc
    call readint
    mov var1,eax
    call readint
    mov var2,eax
    call readint
    mov var3,eax
RET
takeInput endp

solveEquation Proc
    mov eax,0
    mov eax,var1
    mov ebx,-5
    cdq
    imul ebx
    mov varf,eax

    mov eax,0
    mov ebx,0
    mov eax,var2
    neg eax
    mov ebx,var3
    cdq
    idiv ebx
    mov vars,edx

    mov eax,varf
    mov ebx,vars
    cdq
    idiv ebx
    mov var4,eax

RET
solveEquation endp

Display Proc
    mov eax,var4
    call writeint
RET
Display endp
END main

