.686
.model flat, c
include C:\masm32\include\msvcrt.inc
includelib C:\masm32\lib\msvcrt.lib

.stack 100h
printf PROTO arg1:Ptr Byte, printlist:VARARG
scanf PROTO arg2:Ptr Sdword, inputlist:VARARG

.data

    in1fmt byte "%d",0
    val dword ?


    ;for check function
    output_msg_format byte "%s", 0
    output_int_format byte 0Ah,"%d","   iteration remains",0Ah,0
    output_msg byte 0Ah,"Enter any number : ", 0
    output_msg1 byte 0Ah,"it's  POSITIVE NUMBER", 0Ah, 0
    output_msg2 byte 0Ah,"it's  ZERO ", 0Ah, 0
    output_msg3 byte 0Ah,"it's  NEGATIVE",0Ah, 0
.code
main PROC

mov ebx,10
loop_:
    INVOKE printf ,ADDR output_msg_format,ADDR output_msg
    INVOKE scanf, ADDR in1fmt, ADDR val

    push val
    call Check 
    pop val
    sub ebx,1
    INVOKE printf ,ADDR output_int_format, ebx
    cmp ebx,0
    jg loop_
    ret
main ENDP

Check PROC
    push ebp
    mov ebp, esp
    mov edx, [ebp+8]
  

    cmp edx, 0

    jl NEGATIVE
    je ZERO
    jg POSITIVE
    jmp EXIT
POSITIVE:
    INVOKE printf, ADDR output_msg_format, ADDR output_msg1
    jmp EXIT

ZERO:
    INVOKE printf, ADDR output_msg_format, ADDR output_msg2
    jmp EXIT

NEGATIVE:
    INVOKE printf, ADDR output_msg_format, ADDR output_msg3
EXIT:
    pop ebp
    ret
Check ENDP
END main