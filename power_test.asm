.text
.globl __start

__start:
    li $a0, 2              # assign the input base
    li $a1, 3              # assign the input power

    jal power              # Call the power function

    # result of the power is now in $v1
    # print the result in exit code
    li $v0, 4001           # syscall code for exit
    move $a0, $v1          # integer value to print
    syscall


power:
    li $v1, 1             # $v1 = 1
    blez $a1, exit        # done if power <= 0

compute:
    mul $v1, $a0, $v1     # result *= base
    addi $a1, $a1, -1     # power--
    bgtz $a1, compute     # loop if power > 0

exit:
    jr $ra                # return to the caller

