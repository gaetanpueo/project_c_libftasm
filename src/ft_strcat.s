; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_strcat.s                                        :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

global _ft_strcat

extern _ft_strlen

section .text

_ft_strcat:

	push rdi

	call _ft_strlen

	add rdi, rax

	mov r8 , rdi
	mov rdi, rsi

	call _ft_strlen

	mov rcx, rax
	mov rsi, rdi
	mov rdi, r8

	repnz movsb

end:

	mov rax, rdi
	pop rdi
	ret