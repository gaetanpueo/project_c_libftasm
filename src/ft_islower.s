global _ft_islower

section .text

_ft_islower:

	cmp rdi, 0x61
	jl false

	cmp rdi, 0x7A
	jg false

	jmp true

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret