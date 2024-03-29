TITLE Exercise Step 2
INCLUDE Irvine32.inc
.data

mbyte BYTE 05,12,100
Align 2
mword WORD 50h, 60h
mdouble DWORD 0A0908070h
greetings BYTE "Hi There",0
Response TEXTEQU <'Hi, Thanks.'>
Reply BYTE Response
.code
 main PROC
    Mov eax,0
    ;moving size of "greetings" variable in register:
    Mov eax, sizeof greetings
    ;displaing size of "greetings" variable:
    call writeint
    ;Next line:
    call crlf
    ;Moving offset or the address of first character in the register: 
    Mov edx, offset greetings
    ;Displaying the string:
    call writestring
    call crlf
    ;Displaying all registers:
    call dumpregs
  exit
main ENDP
END main
