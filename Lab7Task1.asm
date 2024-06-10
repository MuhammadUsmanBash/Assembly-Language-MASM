TITLE EXercise 1
INCLUDE Irvine32.inc
.data
    array DWORD 40,50,10,20,30,60,100,1000
    smaller DWORD 4294967295
    greater DWORD 0
    smallerMsg BYTE "The smaller number present in the array is: ",0
    greaterMsg BYTE "The greater number present in the array is: ",0
.code
 main PROC
    mov ecx, LENGTHOF array
    mov esi, OFFSET array
    call Compare
    call Display

  exit
main ENDP
Compare Proc
    L1:
        mov eax,[esi]
        cmp eax,greater
        JB quitg
        mov greater,eax
        quitg:
        cmp eax,smaller
        JA quits
        mov smaller,eax
        quits:
        add esi,4
    loop L1
RET
Compare endp

Display Proc
    mov edx,OFFSET greaterMsg
    call writestring
    mov eax,greater
    call writeint

    call crlf
    mov edx,OFFSET smallerMsg
    call writestring
    mov eax,smaller
    call writeint
RET
Display endp
END main

