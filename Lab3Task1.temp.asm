TITLE Exercise Step 1
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
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
  ;putting values in registers:
  Mov al,mbyte+1
  Mov ah,mbyte
  ;displaying all registers:
  call dumpregs
  ;displaying outputs in all four formats with a line breaks for code readibility:
  call writeint
  call crlf
  call writehex
  call crlf
  call writebin
  call crlf
  call writechar
  call crlf
  exit
main ENDP
END main
