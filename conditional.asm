# conditional.asm
# A conditionally branching program in MIPS Assembly for CS64
#
#  Data Area - allocate and initialize variables
.data
	prompt: .asciiz "Enter an integer: "

#Text Area (i.e. instructions)
.text
main:

	li $v0, 5
	syscall
	move $s0, $v0

	andi $t0, $s0, 3

	bne $t0, $zero, multSeven
multFour:
	li $t1, 4
	mult $t1, $s0
	j print

multSeven:
	li $t1, 7
	mult $t1, $s0

print:
	mflo $t0
	li $v0, 1
	move $a0, $t0
	syscall


exit:
	li $v0, 10
	syscall
	# Exit SPIM: Write your code here!

