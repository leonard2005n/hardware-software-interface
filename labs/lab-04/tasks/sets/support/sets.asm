; SPDX-License-Identifier: BSD-3-Clause

%include "printf32.asm"

section .data
    FIRST_SET: dd 139   ; The first set
    SECOND_SET: dd 169  ; The second set

section .text
    global main
    extern printf

main:
    ; The two sets can be found in the FIRST_SET and SECOND_SET variables
    mov eax, DWORD [FIRST_SET]
    mov ebx, DWORD [SECOND_SET]
    PRINTF32 `%u\n\x0`, eax ; print the first set
    PRINTF32 `%u\n\x0`, ebx ; print the second set

    ; TODO1: reunion of the two sets
	mov edx, ebx
	or edx, eax
    PRINTF32 `%u\n\x0`, edx ; print the first set

    ; TODO2: adding an element to a set
	or eax, 0x4
    PRINTF32 `%u\n\x0`, eax ; print the first set

    ; TODO3: intersection of the two sets
	mov edx, ebx
	and edx, eax
    PRINTF32 `%u\n\x0`, edx ; print the first set

    ; TODO4: the complement of a set
	mov edx, 0xFFFFFFFF
	xor edx, eax
    PRINTF32 `%u\n\x0`, edx ; print the first set

    ; TODO5: removal of an element from a set
	xor eax, 0x2
    PRINTF32 `%u\n\x0`, eax ; print the first set


    ; TODO6: difference of two sets
	not ebx
	and eax, ebx
    PRINTF32 `%u\n\x0`, eax ; print the first set

    xor eax, eax
    ret
