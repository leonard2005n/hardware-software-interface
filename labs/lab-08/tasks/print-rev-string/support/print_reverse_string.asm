section .text
global print_reverse_string

print_reverse_string:
    push ebp
    mov ebp, esp
    push ebx                ; preserve ebx as required by cdecl

    ; TODO: print the string in reverse

    pop ebx
    leave
    ret
