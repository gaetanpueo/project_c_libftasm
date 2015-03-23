; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_isascii.s                                       :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

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