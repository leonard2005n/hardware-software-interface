; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

%define ARRAY_SIZE    10

section .data
    dword_array dd 1392, -12544, -7992, -6992, 7202, 27187, 28789, -17897, 12988, 17992

section .text
extern printf
global main
main:
	; TODO: Implement the code to count negative and positive numbers in the array
	push ebp
    mov ebp, esp


	mov ecx, ARRAY_SIZE
	xor edx, edx
	xor ebx, ebx
for_loop:
	cmp ecx, 0
	je end_loop
	mov eax, dword [dword_array + ecx * 4 - 4]
	
	cmp eax, 0
	jg else
if:
	inc edx
	jmp end
else:
	inc ebx
end:
	dec ecx
	jmp for_loop
end_loop:

    PRINTF32 `Num pos is %u, num neg is %u\n\x0`, ebx, edx

	mov ecx, ARRAY_SIZE
	xor edx, edx
	xor ebx, ebx
	xor eax, eax

for_loop2:
	cmp ecx, 0
	je end_loop2
	mov eax, dword [dword_array + ecx * 4 - 4]
	test al, 1

	jp else2
if2:
	inc ebx
	jmp end2
else2:
	inc edx
end2:
	dec ecx
	jmp for_loop2
end_loop2:

        PRINTF32 `Num even is %u, num odd is %u\n\x0`, edx, ebx


	xor eax, eax
	pop ebp
	ret
