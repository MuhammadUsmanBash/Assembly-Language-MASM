TITLE EXercise 2
INCLUDE Irvine32.inc
.data
    one WORD 8002h
    two WORD 4321h
.code
 main PROC
    mov edx,21348041h
    movsx edx,one ; (a)
    movsx edx,two ; (b)
    call dumpregs
  exit
main ENDP
END main

