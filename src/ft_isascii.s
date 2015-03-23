global _ft_isascii

section .text

_ft_isascii:

	cmp rdi, 0x00
	jl false

	cmp rdi, 0x7F
	jg false

	jmp true

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret