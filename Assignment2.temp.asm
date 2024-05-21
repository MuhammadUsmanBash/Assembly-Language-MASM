TITLE Calculating Average using procedures;
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data
array BYTE 10h,5h,13h
sumv WORD ?
avg BYTE ?
.code
main PROC
    call Average
    call writeint
    exit
main ENDP

Sum PROC
    mov ecx, LENGTHOF array
    mov ebx, OFFSET array
    mov esi,0h
    L1:
        add eax,ebx[esi]
        inc esi
    loop L1
    mov word ptr sum, eax
    ret
Sum ENDP

Average PROC
    call sum
    mov avg, sumv/LENGTHOF array
    movzx al, avg
    ret
Average ENDP
END main



