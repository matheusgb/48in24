## Registers

# | Register | Usage     | Type    | Description                                      |
# | -------- | --------- | ------- | ------------------------------------------------ |
# | `$a0`    | input     | integer | year to check                                    |
# | `$v0`    | output    | boolean | input is leap year (`0` = `false`, `1` = `true`) |
# | `$t0-9`  | temporary | any     | used for temporary storage                       |

.globl is_leap_year

is_leap_year:
    li $t0, 100
    divu $a0, $t0       
    mfhi $t1            
    beq $t1, $zero, check_div_400
    bne $t1, $zero, check_div_4

    li $v0, 0           
    jr $ra              

check_div_400:
    li $t0, 400
    divu $a0, $t0       
    mfhi $t1            
    beq $t1, $zero, true_case

    li $v0, 0           
    jr $ra     

check_div_4:
    li $t0, 4
    divu $a0, $t0       
    mfhi $t1            
    beq $t1, $zero, true_case

    li $v0, 0           
    jr $ra     
        
true_case:
    li $v0, 1           
    jr $ra              

