.data
string: .asciiz "\n Enter the number of your choice:\n"
string1: .asciiz " "
string2: .asciiz "\nProgram completed"
string3: .asciiz "\nThe sum is: "
.text

#print greeting
li $v0,4
la $a0, string
syscall

#enter input
li $v0,5
syscall
move $s0, $v0

#loop
li $s1,0
li $s2, 0
loop:
bge $s1,$s0, end
addi $s1, $s1, 1
add $s2, $s2, $s1

j loop

end:
#print sum text
li $v0,4
la $a0, string3
syscall
#print sum int
li $v0,1
move $a0, $s2
syscall

#print exit statement
li $v0,4
la $a0, string2
syscall

#exit program
li $v0, 10
syscall