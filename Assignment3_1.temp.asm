; Finite State Machine (Finite.asm)
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
ENTER_KEY = 13
.data
InvalidInputMsg BYTE "Invalid input",13,10,0
.code
main PROC
call Clrscr

StateA:
call Getnext ; read next char into AL
cmp al,'+' ; leading + sign?
je StateB ; go to State B
cmp al,'-' ; leading - sign?
je StateB ; go to State B
call IsDigito ; ZF = 1 if AL contains a digit
jz StateB ; go to State B
call DisplayErrorMsg ; invalid input found
jmp Quit

StateB:
call Getnext ; read next char into AL
call IsDigito ; ZF = 1 if AL contains a digit
jz StateB

cmp al, ENTER_KEY ; Enter key pressed?
je Quit ; yes: quit
call DisplayErrorMsg ; no: invalid input found
jmp Quit
Quit:
call Crlf
exit
main ENDP

Getnext PROC
call ReadChar ; input from keyboard
call WriteChar ; echo on screen
ret
Getnext ENDP

DisplayErrorMsg PROC
push edx
mov edx,OFFSET InvalidInputMsg
call WriteString
pop edx
ret
DisplayErrorMsg ENDP

IsDigito PROC
cmp al,'0'
jb ID1 ; ZF = 0 when jump taken
cmp al,'9'
ja ID1 ; ZF = 0 when jump taken
test ax,0 ; set ZF = 1
ID1: ret
IsDigito ENDP

END main