TITLE EXercise 1
INCLUDE Irvine32.inc
.data
    attempts DWORD 20
    marks SDWORD 20 DUP(?)
    enteredMarks DWORD 0
    grades DWORD 65,66,67,68,70
    marksGrade DWORD 20 DUP(?)
    marksMsg BYTE "Give your marks in Subject: ",0
    invalid BYTE "You have entered invalid grade. Now enter new value: ",0
    tableHead BYTE "--------------------Program Output--------------------",13,10,"  Grade                  |                    Marks  ",13,10,"______________________________________________________",13,10,0
    tableMidLine BYTE "                        |                         ",0
.code
 main PROC
    call AskMarks
    call DrawTable

  exit
main ENDP
AskMarks Proc
    mov ecx,attempts
    mov edx, OFFSET marksMsg
    call writestring
    call crlf
    mov ebx,OFFSET marks
    mov esi, OFFSET grades
    mov ebp, OFFSET marksGrade
    mov edx,OFFSET invalid
    L1:
    call READINT
    cmp eax,0
    JL break
    mov [ebx],eax
        cmp eax,60
        JGE first
        mov edx,[esi+16]
        mov [ebp],edx
        jmp quit
        first:

        cmp eax,70
        JGE second
        mov edx,[esi+12]
        mov [ebp],edx
        jmp quit
        second:

        cmp eax,80
        JGE third
        mov edx,[esi+8]
        mov [ebp],edx
        jmp quit
        third:

        cmp eax,90
        JGE forth
        mov edx,[esi+4]
        mov [ebp],edx
        jmp quit
        forth:

        cmp eax,101
        JGE fifth
        mov edx,[esi]
        mov [ebp],edx
        fifth:
        quit:
    add ebx,4
    add ebp,4
    add enteredMarks,1

    LOOP L1
    break:
RET
AskMarks endp

DrawTable Proc
    mov edx,OFFSET tableHead
    call writestring
    mov ecx,enteredMarks
    mov esi,OFFSET marks
    mov ebp,OFFSET marksGrade
    mov edx,OFFSET tableMidLine
    L1:
        mov eax,[ebp]
        call writechar
        call writestring
        mov eax,[esi]
        call writeint
        call crlf
        add ebp,4
        add esi,4
    LOOP L1
RET
DrawTable endp
END main

