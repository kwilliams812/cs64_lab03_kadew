# arithmetic.asm
# A simple calculator program in MIPS Assembly for CS64
#

.text
main:

	#take input x into s0
	#take input y into s1
	li $v0, 5
	syscall
	move $s0, $v0
	
	li $v0, 5
	syscall
	move $s1, $v0

	# 32*(x-y/2)+4

	sra $t0, $s1, 1
	sub $t0, $s0, $t0
	sll $t0, $t0, 5

	li $t1, 4
	add $t0, $t0, $t1


	li $v0, 1
	move $a0, $t0
	syscall
	


exit:
	li $v0, 10
	syscall
	# Exit SPIM: Write your code to exit here!
