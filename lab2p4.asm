TITLE Divide -10 by 3
INCLUDE Irvine32.inc
.data

.code
main PROC

    mov eax, 0h
    mov ebx, 0h
    mov eax, dividend/divisor   ;This Moves the value of -10/3 in the EAX
    mov ebx, (dividend MOD divisor)    ;This Moves the value of remainder of -10/3 in EBX
    
    ;TO Display the registers
    call DumpRegs
exit
main ENDP
END main