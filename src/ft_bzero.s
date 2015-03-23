global _ft_bzero

section .text

_ft_bzero:

	mov rcx, rsi
	mov rax, 0x00

	rep stosb

	jmp end

end:

	ret