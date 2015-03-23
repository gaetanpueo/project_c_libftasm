global _ft_isdigit

section .text

_ft_isdigit:

	cmp rdi, 0x30
	jl false

	cmp rdi, 0x39
	jg false

	jmp true

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret