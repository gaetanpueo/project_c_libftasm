global _ft_isupper

section .text

_ft_isupper:

	cmp rdi, 0x41
	jl false

	cmp rdi, 0x5A
	jg false

	jmp true

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret