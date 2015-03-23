; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_isalnum.s                                       :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

global _ft_isalnum

extern _ft_isalpha
extern _ft_isdigit

section .text

_ft_isalnum:

	call _ft_isalpha

	cmp rax, 0x01
	je true

	call _ft_isdigit

	cmp rax, 0x01
	je true

	jmp false

true:

	mov rax, 0x01
	ret

false:

	mov rax, 0x00
	ret