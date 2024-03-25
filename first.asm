Include irvine32.inc
.data
;variable declarations go here

.code
Main Proc
;instructions go here
Mov 	eax, 30h		;Assembly Language is NOT case sensitive
Mov 	ebx, 20h
Mov	ecx,0h
Add 	ecx, eax
Add 	ecx, ebx
Call 	dumpregs	;displays the result on the screen by displaying all register values
Exit
Main endp

End main
