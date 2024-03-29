TITLE Exercise Step 3
INCLUDE Irvine32.inc
.data

mbyte BYTE 05,12,100
Align 2
mword WORD 50h, 60h
mdouble DWORD 0A0908070h
greetings BYTE "Hi There",0
Response TEXTEQU <'Hi, Thanks.',0> ;Here we have added the null terminator in this to prevent oversixe error
Reply BYTE Response
.code
 main PROC
    Mov edx,0
    ;Moving offset or the address of first character in the register:
    Mov edx, offset Response
    ;Displaying the string:
    call writestring
    call crlf
    ;Displaying all registers:
    call dumpregs
  exit
main ENDP
END main
