	.arch	armv8-a
	.text
	.align	2
	.globl	_start
_start:
	mrs	x0, SCTLR_EL2
	mrs	x1, HCR_EL2
	mrs	x2, ELR_EL2
	mrs	x3, SPSR_EL2
	mrs	x4, ID_AA64ISAR0_EL1
	mrs	x5, ID_AA64ISAR1_EL1
	mrs	x6, ID_AA64MMFR0_EL1
	mrs	x7, ID_AA64MMFR1_EL1
	mrs	x8, ID_AA64PFR0_EL1
	mrs	x9, ID_AA64PFR1_EL1
	mrs	x10, VBAR_EL2
	b	.
