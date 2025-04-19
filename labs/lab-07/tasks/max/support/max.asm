%include "printf32.asm"

section .text

extern printf
global main
main:
    ; numbers are placed in these two registers
    mov eax, 4
    mov ebx, 1

    ; TODO: get maximum value. You are only allowed to use one conditional jump and push/pop instructions.
	cmp eax, ebx
	jg end
	push ebx
	pop eax
	end:
    PRINTF32 `Max value is: %d\n\x0`, eax ; print maximum value

    ret
