; Michael Robert G. Geronimo - S11

section .text
bits 64
default rel
global dotproductsimd

dotproductsimd:
	shr rcx, 3
	mov rax, 0 
	loop_start:
		vmovdqu ymm0, [rdx]
		vmovdqu ymm1, [r8] 
		vpmulld ymm2, ymm1, ymm0 
		vphaddd ymm3, ymm2,ymm2 
		
		add rdx, 32 
		add r8, 32 
		loop loop_start

ret
