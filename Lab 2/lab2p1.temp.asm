TITLE Add and Subtract (AddSub2.asm)
; This program adds and subtracts 32-bit unsigned
; integers and stores the sum in a variable.
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
val1 DWORD 10000h      ; val1 declared as a variable of type DWORD and initialized
val2 DWORD 40000h
val3 DWORD 20000h
finalVal DWORD ?

.code
main PROC
    mov eax,val1        ; start with 10000h
    add eax,val2        ; add 40000h
    sub eax,val3        ; subtract 20000h
    mov finalVal,eax    ; store the result (30000h)

    ;Display finalVal
    mov eax, finalVal   ; Move the value of finalVal into eax
    call WriteHex       ; Display the hexadecimal value of finalVal
    call Crlf           ; Move to the next line 

    call DumpRegs       ; display the registers
    exit
main ENDP
END main