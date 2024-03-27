TITLE Evaluated statement using: “5+(6-2)” using two register
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

  exit
main ENDP
END main
