INCLUDE c:\Users\Muhammad Usman\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc




.data

var1 DWORD 5
var2 DWORD 10
var3 DWORD 12
var4 DWORD 4
value DWORD -5



.code
main proc

mov eax,var2
neg var2
cdq
idiv var3
mov ebx,edx


mov eax,var1
mov ecx,value
cdq
imul ecx
cdq
idiv ebx

mov var4,eax


call dumpregs




exit
main endp


End