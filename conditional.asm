#demo 2
#if-else
li $s1, 15
li $s2, 10
bgt $s1, $s2, next
li $s0, -1
j done
next:
li $s0, 1
done: