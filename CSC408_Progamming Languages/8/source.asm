.data
newline: .asciiz "\n"
number1: .word 200
prompt1:
.text
.globl main
main:
addi $sp, $sp, -8;
li $t0, 200;
sw $t0, 4($sp);
lw $t1, 4($sp);#Load operation
addi $t2, $t1, 20;#ALU Operation
sw $t2, 0($sp);#Store operation
lw $t3, 0($sp);
addi $t3, $t3, 1;
sw $t3, 0($sp);
li $v0, 1
lw $a0, 4($sp);
syscall #Print any integer in the console of MIPS
li $v0, 4
la $a0, newline
syscall #Print any string in the console of MIPS
li $v0, 1
lw $a0, 0($sp);
syscall
addi $sp, $sp, 8;
jr $ra;
