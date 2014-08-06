	.syntax unified
	.arch armv7-a
	.text

	.equ locked, 1
	.equ unlocked, 0

	.global lock_mutex
	.type lock_mutex, function
lock_mutex:
        @ INSERT CODE BELOW
	ldr r3, [r0]
	cmp r3, #1
	bne .L2
.L5:	
	b	.L5
.L2:
	movs r3, #1
	str r3, [r0]
	bx lr
        @ END CODE INSERT

	.size lock_mutex, .-lock_mutex
	.align 2
	.global unlock_mutex
	.thumb
	.thumb_func
	.type unlock_mutex, function
unlock_mutex:
	@ INSERT CODE BELOW
	movs r3, #0
	str r3, [r0]        
	bx lr

        @ END CODE INSERT
	.size unlock_mutex, .-unlock_mutex

	.end
