; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    N: dd 7          ; N-th fibonacci number to calculate

section .text
    global main
    extern printf

main:
    mov ecx, DWORD [N]       ; we want to find the N-th fibonacci number; N = ECX = 7

	mov eax, 0x0
	mov edx, 0x1
	mov ebx, 0x0

	cmp ecx, 0
	jne if
    PRINTF32 `%d\n\x0`, eax  ; DO NOT REMOVE/MODIFY THIS LINE
if:
	cmp ecx, 1
	jne loop
    PRINTF32 `%d\n\x0`, edx  ; DO NOT REMOVE/MODIFY THIS LINE


loop:
	cmp ecx, 3
	je end_loop
	mov eax, ebx
	mov ebx, edx
	add edx, eax
	dec ecx
	jmp loop
end_loop
    PRINTF32 `%d\n\x0`, edx  ; DO NOT REMOVE/MODIFY THIS LINE
    ; TODO: calculate the N-th fibonacci number (f(0) = 0, f(1) = 1)
    ; PRINTF32 `%d\n\x0`, ecx  ; DO NOT REMOVE/MODIFY THIS LINE
    xor eax, eax

    ret
