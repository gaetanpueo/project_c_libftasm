global _ft_isalpha

extern _ft_isupper
extern _ft_islower

section .text

_ft_isalpha:

	call _ft_isupper

	cmp rax, 0x01
	je true

	call _ft_islower

	cmp rax, 0x01
	je true

	jmp false

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret