.section .text

.global __start


__start:
	li $v0, 4004
	li $a0, 1
	la $a1, msg
	li $a2, 13
	syscall

	li $v0, 4001
	li $a0, 0
	syscall

.section .data

msg:
.asciz "Hello World!\n"
