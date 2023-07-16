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

		vextractf128 xmm1,ymm1,0 
		vpextrd rbx, xmm1, 0 
		add rax, rbx
		vpextrd rbx, xmm1, 1
		add rax, rbx

		

		add rdx, 32 
		add r8, 32 
		loop loop_start

ret