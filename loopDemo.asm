.data
string1: .asciiz "\nEnter a number: \n"
.text
li $v0, 4
la $a0, string1
syscall

.data
string2: .asciiz " "
.text

#accept number
li $v0, 5
syscall
move $s0, $v0 #save the number into s0

li $s1, 0
loop:
bltz $s0, exit
#print numbers
li $vo, 1
move $a0, $s0
syscall

#print space between numbers
li $v0, 4
la $a0, string2
syscall

subi $s0, $s0, 1
j loop

exit:
li $v0, 10
syscall