TITLE designing equation a+(b-c)
INCLUDE Irvine32.inc
.data
A BYTE 5h
B BYTE 15h
ca BYTE 5h
ans BYTE ?
.code
main PROC
    call addition
    call writehex
    exit
main ENDP

sum PROC
    
    mov al,b
    mov bl,ca
    sub al,bl
    ret
sum ENDP

addition PROC
    call sum
    mov cl,ca
    add cl,al
    mov ans,cl
    mov al,cl ; for writint
    ret
addition ENDP
END main



