# Khadi Valieva
# Classwork 10 problem 2
# Input is in the following order:
# 1 2 3 4
# 5 6 7 8
# 9 10 11 12
# When i try to change the values for [i][j], my code kept breaking so i left it as it is.

.data
arr:    .space 48               # Space for 12 integers (3x4 array, 12*4 = 48 bytes)
msg_input: .asciiz "Enter value for arr[i][j]: "
msg_row:   .asciiz "Row sum: "
msg_col:   .asciiz "Column sum: "
newline:   .asciiz "\n"

.text
.globl main

main:
    li $t0, 0              # i = 0 
    li $t1, 3              # Number of rows
    li $t2, 4              # Number of columns

# Nested loop to read inputs
read_input:
    bge $t0, $t1, calc_sums  # If i >= num of rows, go to sum calculation
    li $t5, 0              # j = 0 (col index)

read_input_inner:
    bge $t5, $t2, increment_row  # If j >= num of cols, move to next row

    # Prompt for input
    li $v0, 4
    la $a0, msg_input
    syscall

    # Read integer input
    li $v0, 5
    syscall
    move $t3, $v0          # Store input value in $t3

    # Calculate arr[i][j] address and store the value
    la $t4, arr
    mul $t6, $t0, $t2       # t6 = i * num_cols
    add $t6, $t6, $t5       # t6 = i * num_cols + j
    sll $t6, $t6, 2         # t6 = (i * num_cols + j) * 4 (word size)
    add $t6, $t6, $t4       # t6 = base_addr + offset
    sw $t3, 0($t6)          # Store input value into arr[i][j]

    addi $t5, $t5, 1        # Increment j
    j read_input_inner       # Repeat input for next column

increment_row:
    addi $t0, $t0, 1        # Increment i
    j read_input            # Repeat input for next row

# Calculate and print row sums
calc_sums:
    li $t0, 0              # i = 0 

row_loop:
    bge $t0, $t1, col_loop   # If i >= number of rows, go to col sum calculation
    li $t3, 0              # row_sum = 0
    li $t5, 0              # j = 0

column_loop_row:
    bge $t5, $t2, print_row_sum  # If j >= number of columns, go print row sum

    # Load arr[i][j] into $t6
    la $t4, arr
    mul $t6, $t0, $t2       # t6 = i * num_cols
    add $t6, $t6, $t5       # t6 = i * num_cols + j
    sll $t6, $t6, 2         # t6 = (i * num_cols + j) * 4
    add $t6, $t6, $t4       # t6 = base_addr + offset
    lw $t7, 0($t6)          # Load value into $t7
    add $t3, $t3, $t7       # row_sum += arr[i][j]

    addi $t5, $t5, 1        # Increment j
    j column_loop_row       # Repeat loop for next col

print_row_sum:
    # Print "Row sum: "
    li $v0, 4              
    la $a0, msg_row         
    syscall                

    # Print row_sum
    li $v0, 1              
    move $a0, $t3          
    syscall                

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall                

    addi $t0, $t0, 1        # Increment i
    j row_loop              # Repeat for next row

# Calculate and print column sums
col_loop:
    li $t5, 0              # j = 0 (column index)

col_sum_loop:
    bge $t5, $t2, end_program  # If j >= number of col, end program
    li $t3, 0              # col_sum = 0
    li $t0, 0              # i = 0

sum_col_loop:
    bge $t0, $t1, print_col_sum  # If i >= number of rows, go print col sum

    # Load arr[i][j] into $t6
    la $t4, arr
    mul $t6, $t0, $t2       # t6 = i * num_cols
    add $t6, $t6, $t5       # t6 = i * num_cols + j
    sll $t6, $t6, 2         # t6 = (i * num_cols + j) * 4
    add $t6, $t6, $t4       # t6 = base_addr + offset
    lw $t7, 0($t6)          # Load value into $t7
    add $t3, $t3, $t7       # col_sum += arr[i][j]

    addi $t0, $t0, 1        # Increment i
    j sum_col_loop          # Repeat for next row

print_col_sum:
    # Print "Column sum: "
    li $v0, 4              
    la $a0, msg_col         
    syscall                

    # Print col_sum
    li $v0, 1              
    move $a0, $t3          
    syscall                

    # Print newline
    li $v0, 4
    la $a0, newline
    syscall                

    addi $t5, $t5, 1        # Increment j
    j col_sum_loop          # Repeat for next column

end_program:
    li $v0, 10             # Exit program
    syscall
