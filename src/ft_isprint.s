global _ft_isprint

section .text

_ft_isprint:

	cmp rdi, 0x20
	jl false

	cmp rdi, 0x7E
	jg false

	jmp true

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret