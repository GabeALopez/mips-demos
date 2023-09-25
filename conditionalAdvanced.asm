li $s1, 5
li $s2, 15
li $s3, 10

bgt $s1, $s2, next1
bgt $s2, $s3, next3
move $s0, $s3
j done

next1:
bgt $s1, $s3, next2
move $s0, $s3
j done

next2:
move $s0,$s1
j done

next3:
move $s0, $s2 
j done

done: