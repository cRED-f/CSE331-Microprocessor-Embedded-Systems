.global _start

.text
_start:
    mov r6, #-1               // Initialize r6 with -1 (a negative value)

    CMP r6, #0                // Compare r6 with 0
    BMI Neg                   // If r6 is less than 0 (negative), branch to Neg

POS:
    mov r1, #0                // Set r1 to 0, indicating r6 is non-negative
    b done                    // Jump to done

Neg:
    mov r1, #1                // Set r1 to 1, indicating r6 is negative
    b done                    // Jump to done

done:
    // Program ends here
.end
