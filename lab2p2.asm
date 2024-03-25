TITLE Swapping the contents of var1 and var2
; This program swaps contents of two byte size variable using registers.
INCLUDE Irvine32.inc
.data
val1 byte 20h      ; val1 declared as a variable of type BYTE and initialized
val2 byte 30h    ; val2 declared as a variable of type BYTE and initialized
.code
 main PROC
	mov eax,0h ;EAX register is initialized with value 0
	mov ebx,0h ;EBX register is initialized with value 0
	mov ecx,0h ;ECX register is initialized with value 0
	mov al,val1   ; moved 20 in al
	mov bl,val2 ;moved 30 in bl
	call DumpRegs       ; display the registers
	;Swapping Registers
	mov cl,al
	mov al,bl
	mov bl,cl
	call DumpRegs       ; display the registers
  exit
main ENDP
END main
