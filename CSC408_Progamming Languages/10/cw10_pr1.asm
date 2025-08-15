# Khadi Valiva
# Classwork 10 Problem 1

.data
arr:    .word 10, 3, 2, 7, 19, 45, 1, 22, 6, 71  
msg:    .asciiz "The sum is: "               

.text
.globl main

main:
    li $t0, 0              # i=0
    li $t1, 0              # sum=0
    li $t2, 10             # Length of the array (10 elements)
    la $t4, arr            # Load base address of arr into $t4

loop:
    bge $t0, $t2, end_loop # If i >= 10, exit loop
    lw $t3, 0($t4)         # Load arr[i] into $t3 (arr[i] is at address $t4)
    add $t1, $t1, $t3      # sum += arr[i]
    addi $t4, $t4, 4       # Increment address by 4 
    addi $t0, $t0, 1       # Increment i
    j loop                 # Repeat the loop

end_loop:
    li $v0, 4              # Prepare to print string
    la $a0, msg            # Load address of msg
    syscall                # Print

    li $v0, 1              # Prepare to print int
    move $a0, $t1          # Move sum into $a0 for printing
    syscall                # Print

    li $v0, 10             # Exit program
    syscall
