.data
t: .word 200                  # Declare integer t and initialize to 200
s1: .half 0                   # Declare short s1
s2: .half 0                   # Declare short s2
s3: .half 0                   # Declare short s3
msg1: .asciiz "The integer value is: "
msg2: .asciiz "The first short value is: "
msg3: .asciiz "The second short value is: "
msg4: .asciiz "The third short value is: "
newline: .asciiz "\n"         # Newline character for formatting

.text
main:
    # Calculate s1 = t + 30
    lw $t0, t                  # Load t into $t0
    li $t1, 30                 # Load 30 into $t1
    add $t2, $t0, $t1          # Add t and 30, result in $t2
    sh $t2, s1                 # Store result in s1 (short)

    # Copy s1 to s2
    lh $t3, s1                 # Load s1 into $t3
    sh $t3, s2                 # Store s1 into s2

    # Calculate s3 = s2 - 8
    lh $t4, s2                 # Load s2 into $t4
    li $t5, 8                  # Load 8 into $t5
    sub $t6, $t4, $t5          # Subtract 8 from s2, result in $t6
    sh $t6, s3                 # Store result in s3

    # Print the results
    li $v0, 4                  # Print string syscall
    la $a0, msg1               # Load address of msg1
    syscall

    li $v0, 1                  # Print integer syscall
    lw $a0, t                  # Load t into $a0
    syscall

    li $v0, 4                  # Print newline
    la $a0, newline
    syscall

    li $v0, 4                  # Print string syscall
    la $a0, msg2               # Load address of msg2
    syscall

    li $v0, 1                  # Print integer syscall
    lh $a0, s1                 # Load s1 into $a0
    syscall

    li $v0, 4                  # Print newline
    la $a0, newline
    syscall

    li $v0, 4                  # Print string syscall
    la $a0, msg3               # Load address of msg3
    syscall

    li $v0, 1                  # Print integer syscall
    lh $a0, s2                 # Load s2 into $a0
    syscall

    li $v0, 4                  # Print newline
    la $a0, newline
    syscall

    li $v0, 4                  # Print string syscall
    la $a0, msg4               # Load address of msg4
    syscall

    li $v0, 1                  # Print integer syscall
    lh $a0, s3                 # Load s3 into $a0
    syscall

    li $v0, 4                  # Print newline
    la $a0, newline
    syscall

    li $v0, 10                 # Exit syscall
    syscall
