#define	HCR_EL2_RW	0x80000000
#define	HCR_EL2_HCD	0x20000000

#define SPSR_EL2_M_EL1H	0b00101

	.arch	armv8-a
	.text
	.align	2
	.globl	_start
_start:
	mov	x0, xzr
	msr	SCTLR_EL1, x0

	mov	x0, #(HCR_EL2_RW)
	orr	x0, x0, #(HCR_EL2_HCD)
	msr	HCR_EL2, x0

	mov	x0, #(SPSR_EL2_M_EL1H)
	msr	SPSR_EL2, x0

	ldr	x0, =_loop
	msr	ELR_EL2, x0
	eret
	
	.align 2	
	.globl _loop
_loop:
	b	.
