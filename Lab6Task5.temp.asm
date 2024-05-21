TITLE Fibonacci sequence

INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.stack 100h

.data
nameMsg BYTE "Please type in your first and last names: ",0
stringName DWORD 50 DUP(?)    ; To be enter by the user
charNameMsg BYTE "The Number of characters in your name is: ",0
next DWORD ?
RevNameMsg BYTE "You name after reversing is: ",0
byteCount DWORD ?
.code
Main Proc
    call Inp
    call Disp
    call crlf
    call RevStr
    call DispRevStr

Exit
Main endp

Inp Proc 
    ;Display Enter your name msg:
    mov edx, offset nameMsg
    call writestring

    ;Takes the input of first and last name:
    Mov edx,offset stringName
    Mov ecx, Sizeof stringName  ;maximum number of name characters
    call readstring

    ;Counts the number of characters in the given name:
    mov byteCount,eax ; number of characters
RET
Inp endp

Disp Proc
    ;To display the number of characters:
    mov edx, offset charNameMsg
    call writestring
    mov eax,byteCount
    call writeint
RET
Disp endp

RevStr Proc
    Pop next ;getting the next instruction reserved
    mov edx, offset stringName
    mov ecx,byteCount
    L1:
        
        mov eax,[edx]
        push eax
        add edx,1
    Loop L1
    push next ;pushing next instruction on top of stack
RET
RevStr endp

DispRevStr Proc
    ;Reverse display msg:
    mov edx, offset RevNameMsg
    call writestring
    Pop next  ;getting the next instruction reserved
    mov ecx,byteCount
    L1:
        pop eax
        call writechar
    Loop L1
    push next ;pushing next instruction on top of stack
RET
DispRevStr endp
End main