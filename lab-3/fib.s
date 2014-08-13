	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {r3, r4, r5, lr}
	
	mov r4, r0
	cmp r0, #2
	ble .L3
	subs r0, r0, #1
	bl fibonacci
	mov r5, r0
	subs r0, r4, #2
	bl fibonacci
	add r0, r0, r5
	pop {r3, r4, r5, pc}
	
.L3:
	mov r0, #1			@ R0 = 0
	pop {r3, r4, r5, pc}		@ EPILOG

.L4:
	mov r0, #1			@ R0 = 1
	pop {r3, r4, r5, pc}		@ EPILOG

	.size fibonacci, .-fibonacci
	.end

