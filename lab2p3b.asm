TITLE Evaluated statement using: “5+(6-2)” using two register
INCLUDE Irvine32.inc
.data
num1 byte 5h      ; num1 declared as a variable of type byte and initialized
num2 byte 6h    ; num2 declared as a variable of type byte and initialized
num3 byte 2h    ; num3 declared as a variable of type byte and initialized
.code
 main PROC
	mov eax,0h ; Initialized EAX with 0
	mov ebx,0h ; Initialized EBX with 0
	mov al,num2  ;moved 6 in AL  
	mov bl,num3 ;moved 2 in BL
	sub al,bl ;subtracted 2 from 6 and put result in AL
	add al,num1; Added the 5 in the already value of AL
	call DumpRegs       ; display the registers
  exit
main ENDP
END main
