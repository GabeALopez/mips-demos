#demo program for loops
.data
string: .asciiz "\n Enter the number of your choice:\n"
string1: .asciiz " "
string2: .asciiz "\nProgram completed"
.text
#print string
li $v0,4
la $a0, string
syscall
#accept number
li $v0,5
syscall
move $s0, $v0

#counter =0
li $s1,0
#loop
loop:
bgt $s1,$s0, end
#print number
li $v0, 1
move $a0,$s1
syscall

#print new line
li $v0,4
la $a0, string1
syscall

addi $s1, $s1, 1
j loop

end:
#print string 2
li $v0,4
la $a0, string2
syscall

#exit

li $v0, 10
syscall