	.file	"Lession1_EX1.c"
	.text
	.section .rdata,"dr"
.LC0:
	.ascii "Error: %s\12\0"
	.text
	.globl	printError
	.def	printError;	.scl	2;	.type	32;	.endef
	.seh_proc	printError
printError:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC0(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC1:
	.ascii "Warning: %s\12\0"
	.text
	.globl	printWarning
	.def	printWarning;	.scl	2;	.type	32;	.endef
	.seh_proc	printWarning
printWarning:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	movq	16(%rbp), %rax
	movq	%rax, %rdx
	leaq	.LC1(%rip), %rax
	movq	%rax, %rcx
	call	printf
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.globl	printInfo
	.def	printInfo;	.scl	2;	.type	32;	.endef
	.seh_proc	printInfo
printInfo:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	printDebug
	.def	printDebug;	.scl	2;	.type	32;	.endef
	.seh_proc	printDebug
printDebug:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	printCritical
	.def	printCritical;	.scl	2;	.type	32;	.endef
	.seh_proc	printCritical
printCritical:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.globl	printSuccess
	.def	printSuccess;	.scl	2;	.type	32;	.endef
	.seh_proc	printSuccess
printSuccess:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	.seh_endprologue
	movq	%rcx, 16(%rbp)
	nop
	popq	%rbp
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
.LC2:
	.ascii "x is not equal to 10\0"
.LC3:
	.ascii "x is less than 10\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	movl	$5, -4(%rbp)
	cmpl	$10, -4(%rbp)
	jne	.L8
	leaq	.LC2(%rip), %rax
	movq	%rax, %rcx
	call	printError
.L8:
	cmpl	$9, -4(%rbp)
	jg	.L9
	leaq	.LC3(%rip), %rax
	movq	%rax, %rcx
	call	printWarning
.L9:
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.ident	"GCC: (MinGW-W64 x86_64-ucrt-posix-seh, built by Brecht Sanders) 13.2.0"
	.def	printf;	.scl	2;	.type	32;	.endef
