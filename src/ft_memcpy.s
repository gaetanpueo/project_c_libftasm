global _ft_memcpy

section .text

_ft_memcpy:

	push rdi

	mov rcx, rdx
	mov rax, rsi

	rep movsb

	sub rdi, rdx
	jmp end

end:

	mov rax, rdi
	pop rdi
	ret