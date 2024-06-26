TITLE EXercise 1
INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
.data


.code
 main PROC
    mov eax,0
    mov al,0D4h 
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf
    call crlf
    
    shr al,1
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf

	mov al,0D4h
    sar al,1
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf

	mov al,0D4h 
    sar al,4
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf

	mov al,0D4h 
    rol al,4
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf

    mov al,0D4h 
    ror al,4
    call writeint
    call crlf
    call writebin
    call crlf
    call writehex
    call crlf

  exit
main ENDP
END main

