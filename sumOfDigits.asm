li $v0, 5
syscall
move $s1, $v0

move $s2, $s1
add $s2, 
mul $s3, $s2, $s1
div $s0, $s3, 2

li $v0, 1
move $a0, $s0
syscall

#exit
li $v0, 10
syscall
move $s0, $v0 #store 2nd number in s2