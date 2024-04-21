TITLE EXercise 2
INCLUDE Irvine32.inc
.data
stringA BYTE "1. The sums of the arrays are shown in the registers EAX and EBX:",0
stringB BYTE "2.) The Contents of registers in decimal numbers is given below:",0
arrayA WORD 2h,3h,4h,5h
arrayB WORD 3h,4h,5h,6h
arrayC WORD ?,?,?,?
.code
 main PROC
    Mov eax,0h
    Mov ebx,0h
    Mov ecx,4h
    Mov esi,OFFSET arrayA
    Mov edi,OFFSET arrayB
    Mov ebp,OFFSET arrayC
    Mov edx,OFFSET stringA
    call writestring
    L1:
    add al,[esi]
    add bl,[edi]
    add esi,2
    add edi,2
    Loop L1
    call dumpregs

    Mov edx,OFFSET stringB
    call writestring
    call crlf

    Mov ecx,2h

    Mov ebp, OFFSET arrayC
    Mov [ebp],al
    Add ebp,2h
    Mov [ebp],bl
    Sub ebp,2h

    L2:
    Mov al,[ebp]
    call writeint
    call crlf
    Add ebp,2h
    Loop L2
  exit
main ENDP
END main

