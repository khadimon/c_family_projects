.data
prompt: .asciiz "Enter a number: "
printPrompt: .asciiz "Printing the number: "
newline: .asciiz "\n"

.text
.globl main
main:
    # Save return address
    addi $sp, $sp, -4           # Allocate space on the stack
    sw $ra, 0($sp)              # Save return address

    # Call readNum function
    jal readNum                  # Jump to readNum function

    # Print the number
    jal printNumber              # Jump to printNumber function

    # Restore return address and exit
    lw $ra, 0($sp)              # Load return address
    addi $sp, $sp, 4            # Deallocate space from the stack
    jr $ra                       # Return to caller

# Function to read a number from the keyboard
readNum:
    li $v0, 4                   # Print string syscall
    la $a0, prompt              # Load address of prompt
    syscall                      # Print prompt

    li $v0, 5                   # Read integer syscall
    syscall                      # Read integer
    move $t0, $v0               # Move the read value to $t0 for later use
    jr $ra                       # Return to caller

# Function to print the number
printNumber:
    li $v0, 4                   # Print string syscall
    la $a0, printPrompt         # Load address of printPrompt
    syscall                      # Print prompt

    li $v0, 1                   # Print integer syscall
    move $a0, $t0               # Move the number to $a0 for printing
    syscall                      # Print the number

    li $v0, 4                   # Print newline
    la $a0, newline             # Load newline
    syscall                      # Print newline

    jr $ra                       # Return to caller
