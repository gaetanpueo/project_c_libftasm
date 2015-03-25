section .text
extern _ft_strlen
extern _malloc

global _ft_strdup

_ft_strdup:
	xor al, al
	mov r13, rdi

	call _ft_strlen
	inc rax
	mov rdi, rax
	mov r14, rax

	call _malloc
	test rax, rax
	je return

	mov rsi, r13
	mov rdi, rax
	mov rcx, r14
	cld
	rep movsb

	ret

return:
	ret
