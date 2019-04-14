.data


num1: .word 1, 1, 1, 0, 0 
list: .asciiz "abcdef"

.text
.globl main
.ent main
main:
	#address of num1


la $a0, list
li $a1, 6
li $a2, 0
li $a3, 6

jal first_func


li $v0, 10
syscall

.end main


first_func:

add $t0, $a0, $zero
add $t1, $zero, $zero
addi $t2, $a1, -1

loop:

    add $t3,$t0,$t1
    lb $t4,0($t3)   #the lb string[i]
    add $t5,$t0,$t2
    lb $t6,0($t5)   #the lb string[j]
    sb $t4,0($t5)   #string[j] = string[i]
    sb $t6,0($t3)   #string[i] = string[j]
    addi $t1,$t1,1  #i++
    addi $t2,$t2,-1     #j--

    slt $t6,$t2,$t1
    beqz $t6,loop




exit:

li $v0, 4
syscall


jr $ra