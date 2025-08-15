section .data
    i dd 0        ; int i (4 bytes)
    a dw 0        ; short a (2 bytes)
    b dw 0        ; short b (2 bytes)

section .text
    global _start

_start:
    ; i = 300
    mov dword [i], 300    ; Store 300 in i
    
    ; a = i
    mov ax, word [i]      ; Move lower 16 bits of i into ax
    mov word [a], ax      ; Store ax in a
    
    ; b = a + 3
    mov ax, word [a]      ; Move value of a into ax
    add ax, 3             ; Add 3 to ax
    mov word [b], ax      ; Store result in b
    
    ; Exit program (system call)
    mov eax, 1            ; system call for exit
    xor ebx, ebx          ; exit code 0
    int 0x80             ; make system call 