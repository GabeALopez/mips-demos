#demo print scanf
#accept first number
li $v0, 5
syscall
move $s1, $v0 #store 1st number in s1

#accept second number
li $v0, 5
syscall
move $s2, $v0 #store 2nd number in s2

li $v0, 5
syscall
move $s3, $v0 

#compare
bgt $s1, $s2, next
bgt $s2,$s3, next2
li $s0, -1
j done

next:
li $s0, 1
j done

next2:
li $s0,2
j done


done:
#print $s0
li $v0, 1
move $a0, $s0
syscall

#exit
li $v0, 10
syscall
move $s2, $v0 #store 2nd number in s2
