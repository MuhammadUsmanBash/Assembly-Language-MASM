INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
 .data
 var1 byte 50
 var2 byte 99
 cas1 byte "Both numbers are equal",0 
cas2 byte "The greater number is ",0
.code
 Main Proc
 mov eax,0 
movzx ebx,var1
 movzx ecx, var2
 cmp ebx,ecx 
je L1
 jg L2
 jl L3
L1:
 mov edx,offset cas1 
call writestring
 call rest
 L2:
mov edx,offset cas2 
call writestring 
mov al,var1 
call writeint
 call rest 
L3:
mov edx,offset cas2 
call writestring 
mov al,var2
 call writeint
 rest: 
Exit 
Main Endp
End Main