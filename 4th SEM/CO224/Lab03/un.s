

	.text	@instruction memory


adder:
	sub sp,sp, #4
	str lr, [sp,#0]

	sub sp,sp, #24
	str r4, [sp,#0]
	str r5, [sp,#4]
	str r6, [sp,#8]
	str r7, [sp,#12]
	str r8, [sp,#16]
	str r9, [sp,#20]
	
	mov r4, #25
	mov r5, #40
	mov r6, #-30
	mov r7, #100
	mov r8, #10

	add r9, r4, r5
	add r9, r9, r6
	add r9, r9, r7
	add r9, r9, r8
	mov r1, r9

	ldr r4, [sp,#0]
	ldr r5, [sp,#4]
	ldr r6, [sp,#8]
	ldr r7, [sp,#12]
	ldr r8, [sp,#16]
	ldr r9, [sp,#20]
	add sp, sp, #24

	ldr r0, = format2
	
	bl printf

	ldr lr, [sp,#0]
	add sp, sp,#4
	mov pc, lr

	.global main
main:

	sub sp,sp, #4
	str lr, [sp,#0]

	ldr r0, = format1
	bl printf

	ldr lr, [sp,#0]
	add sp, sp, #4

	sub sp,sp, #4
	str lr, [sp,#0]

	bl adder

	ldr lr, [sp,#0]
	add sp, sp, #4

	sub sp, sp, #4
	str lr, [sp,#0]

	ldr r0, =format3
	bl printf

	ldr lr, [sp,#0]
	add sp, sp, #4
	mov pc, lr

	
	.data	@data memory
format1: .asciz "Calling the addresses\n"
format2: .asciz "The total is %d\n"
format3: .asciz "The adder has finished\n"
