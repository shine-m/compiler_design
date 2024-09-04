.686 ; Pentium or below processors
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG

.data
msg byte "Hello World", 0Ah
msg2 byte "Hello World2", 0Ah, 0

int_format byte "Int Val : %d",0Ah,0
var1 db 19

str_format byte "Str Val : %s",0Ah,0
var2 db "Mr. X",0

.code
main proc
    INVOKE printf, ADDR msg
    INVOKE printf, ADDR int_format, var1
    INVOKE printf, ADDR str_format, ADDR var2
    ret
main endp
end