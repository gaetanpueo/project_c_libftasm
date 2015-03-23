global _ft_memset

section .text

_ft_memset:

	push rdi

	mov rcx, rdx
	mov rax, rsi

	rep stosb

	sub rdi, rdx
	jmp end

end:

	mov rax, rdi
	pop rdi
	ret