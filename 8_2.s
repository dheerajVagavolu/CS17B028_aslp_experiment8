.data


num1: .word 1, 1, 1, 0, 0 

.text
.globl main
.ent main
main:
	#address of num1


la $a0, num1
li $a1, 2
li $a2, 0
li $a3, 5

jal first_func

add $t5, $v0, $zero

sub $t6, $a3, $t5



li $t0, 0

loop1:



beq $t0, $t5, end_loop1

add $t2, $zero, $t0

add $t2, $t2, $t2
add $t2, $t2, $t2

add $t3, $a0, $t2

sw $zero, 0($t3)

addi $t0, $t0, 1

j loop1

end_loop1:




li $t7, 1

loop2:



beq $t0, $a3, end_loop2

add $t2, $zero, $t0

add $t2, $t2, $t2
add $t2, $t2, $t2

add $t3, $a0, $t2

sw $t7, 0($t3)

addi $t0, $t0, 1

j loop2

end_loop2:




li $v0, 10
syscall

.end main


first_func:

li $t0, 0 # counter
li $t1, 0 # ans

loop:



beq $t0, $a3, end_loop

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