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

#Write an assembly program that will prompt the user for 2 inputs
#(let’s call them abstractly x and y). It should then calculate the value
#of 32*(x-y/2)+4. You can not use the mult or div instruction for this
#task (hint: instead think shifting!). A sample run of this program looks
#like the following, with user input in bold/blue (for your convenience -
#it won’t actually appear blue on the screen).

#Note that when the answer is given, there is NO expectation of a new line.
#You should write your program to a file called arithmetic.asm
#(using the template from the drive folder or from the CSIL).
#You may assume that the user can use signed integers as inputs but
#also that no multiplication will lead to overflow. Use “Reference MIPS
#ISA.pdf” on the shared drive to see the instructions available to be
#used (Please remember to not use “mult” or “multu” instructions here -
#if mult or multu is in the file the autograder will score 0)