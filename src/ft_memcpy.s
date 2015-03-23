; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_memcpy.s                                        :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

global _ft_memcpy

section .text

_ft_memcpy:

	push rdi

	mov rcx, rdx
	mov rax, rsi

	rep movsb

	sub rdi, rdx
	jmp end

end:

	mov rax, rdi
	pop rdi
	ret