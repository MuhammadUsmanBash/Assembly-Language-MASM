TITLE EXercise 3
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data
stringA BYTE "2. The sums of the elements of the arrays are shown below:",0
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
    call crlf
    L1:
    Mov al,[esi]
    Add al,[edi]
    Mov [ebp],al
    add esi,2
    add edi,2
    add ebp,2
    Loop L1

    Mov esi, offset arrayC ;ESI,EDI,EBX can use here. 
    Mov ecx ,lengthof arrayC
    Mov ebx , type  arrayC
    Call dumpmem
  exit
main ENDP
END main

