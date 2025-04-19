%include "printf32.asm"

%define ARRAY_LEN 7

section .data

input dd 122, 184, 199, 242, 263, 845, 911
output times ARRAY_LEN dd 0

section .text

extern printf
global main
main:

    ; TODO push the elements of the array on the stack
	mov ecx, 0
for:
	mov eax, DWORD [input + 4 * ecx]
	push eax
	inc ecx
	cmp ecx, ARRAY_LEN
	je end1
	jmp for
end1:	
    ; TODO retrieve the elements (pop) from the stack into the output array
	mov ecx, 0
for2:
	pop eax
	mov [output + ecx * 4], eax
	inc ecx
	cmp ecx, ARRAY_LEN
	je end2
	jmp for2
	end2:
    PRINTF32 `Reversed array: \n\x0`

    xor ecx, ecx
print_array:
    mov edx, [output + 4 * ecx]
    PRINTF32 `%d\n\x0`, edx
    inc ecx
    cmp ecx, ARRAY_LEN
    jb print_array

    xor eax, eax
    ret
