; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_memset.s                                        :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

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