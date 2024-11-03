.global _start

.data
    nmbr: .word 2,3,5,4,8     // Array of numbers to be multiplied and checked for max
    mul_array: .word 0        // Placeholder to store the multiplication result
    max_array: .word 0        // Placeholder to store the maximum value in the array

.text
_start:
    // Initialize registers
    ldr r1, =nmbr             // Load the address of the nmbr array into r1
    mov r2, #1                // Initialize r2 to 1, will hold the cumulative multiplication result
    mov r4, #0                // Initialize r4 to 0, will store the maximum value found
    mov r6, #5                // Set loop counter (5 elements in nmbr array) in r6

loop:
    // Load the next value from the array
    ldr r3, [r1]              // Load the value at the address in r1 into r3

    // Multiply current value with the cumulative product
    mul r2, r2, r3            // r2 = r2 * r3

    // Compare the current value with the maximum found so far
    CMP r3, r4                // Compare r3 (current value) with r4 (current max)
    BGT maxArr                // If r3 > r4, branch to maxArr to update the max

    // Move to the next element in the array
    add r1, r1, #4            // Move to the next array element (each element is 4 bytes)
    sub r6, r6, #1            // Decrement the loop counter
    CMP r6, #0                // Check if we've gone through all elements
    beq done                  // If r6 == 0, branch to done

    b loop                    // Otherwise, repeat the loop

maxArr:
    // Update the maximum value
    mov r4, r3                // Set r4 to the new maximum value (r3)
    b loop                    // Go back to the main loop

done:
    // Store the results in memory
    ldr r5, =mul_array        // Load the address of mul_array into r5
    str r2, [r5]              // Store the cumulative product in mul_array

    ldr r8, =max_array        // Load the address of max_array into r8
    str r4, [r8]              // Store the maximum value in max_array

.end
