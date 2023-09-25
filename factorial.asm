#calculate factorial of a number

.data
string1: .asciiz "\nEnter a number of your choice\n"
string2: .asciiz "\n The factorial is: \n"
string3: .asciiz "\nThe number entered is less than 0\n"
.text

la $a0, string1
li $v0, 4
syscall

#accept number from user
li $v0, 5
syscall
move $s0, $v0 #move the number into s0 register

#check condition
bltz $s0, error

move $a0, $s0 #pass the number as an argument to function
#call factorial
jal factorial

#-------Print Factorial Number-------------------
move $s0, $v0

li $v0, 4
la $a0, string2
syscall

li $v0, 1
move $a0, $s0
syscall


j exit


#--------------------------

factorial:
addi $sp, $sp, -8
sw $ra 4($sp)
sw $a0, 0($sp)

slti $t0, $a0, 1
beq $t0, $zero, L1

addi $v0, $zero, 1
addi $sp, $sp, 8
jr $ra

L1:
addi $a0, $a0, -1
jal factorial

lw $a0, 0($sp)
lw $ra, 4($sp)
addi $sp, $sp, 8

mul $v0, $a0, $v0
jr $ra

#-------Print Error Message-------------------

error:
li $v0, 4
la $a0, string3
syscall
#--------------------------
exit:

