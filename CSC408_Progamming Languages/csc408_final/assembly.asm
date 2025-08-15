section .data
    iterations dd 10    ; int iterations = 10
    val dd 5           ; int val = 5

section .text
    global _start

_start:
    mov ecx, (0)        ; i = 0 (initialize counter)
    
loop_start:
    cmp ecx, [iterations]  ; compare i with iterations
    jge loop_end          ; if i >= iterations, exit loop
    
    mov eax, [val]        ; load current value of val
    add eax, ecx          ; add i to val
    mov [val], eax        ; store result back in val
    
    inc ecx               ; i++
    jmp loop_start        ; repeat loop
    
loop_end:
    ; Exit program
    mov eax, 1           ; system call for exit
    mov ebx, 0           ; exit code 0
    int 0x80            ; make system call

