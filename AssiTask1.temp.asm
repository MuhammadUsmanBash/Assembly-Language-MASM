TITLE EXercise 2
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data
    one WORD 8002h
    two WORD 4321h
.code
 main PROC
    mov eax,1002FFFFh  
    call dumpregs
    neg ax
    call dumpregs
  exit
main ENDP
END main

