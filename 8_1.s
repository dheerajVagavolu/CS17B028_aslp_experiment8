
.data


num1: .word 0, 513, 23, 134, 23 

.text
.globl main
.ent main
main:
	#address of num1


la $a0, num1
li $a1, 2
li $a2, 23

jal first_func

add $t5, $v0, $zero

li $v0, 10
syscall

.end main


first_func:

li $t0, 0 # counter
li $t1, 0 # ans

loop:



beq $t0, 5, end_loop

add $t2, $zero, $t0

add $t2, $t2, $t2
add $t2, $t2, $t2

add $t3, $a0, $t2

lw $t4, 0($t3)


addi $t0, $t0, 1

beq $t4, $a2, adduuu



j loop

adduuu:
addi $t1, $t1, 1



j loop


end_loop:


add $v0, $t1, $zero


jr $ra
