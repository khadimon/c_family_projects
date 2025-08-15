#lang racket

    .section .data
i:      .long 0             ; Reserve space for i (4 bytes for integer)
a:      .short 0            ; Reserve space for a (2 bytes for short)
b:      .short 0            ; Reserve space for b (2 bytes for short)

    .section .text
    .globl _start

_start:
    ; i = 300
    movl $300, i           ; Move the constant 300 into the memory location of i

    ; a = i
    movl i, %eax           ; Move the value of i into the eax register (32-bit)
    movw %ax, a            ; Move the lower 16 bits of eax into a (short)

    ; b = a + 3
    movw a, %bx            ; Move the value of a into the bx register (16-bit)
    addw $3, %bx           ; Add 3 to the value in bx (short addition)
    movw %bx, b            ; Store the result in b

    ; Exit the program (use system call to exit)
    mov $60, %rax          ; Syscall number for exit (60)
    xor %rdi, %rdi         ; Return code 0
    syscall                ; Make the syscall to exit
