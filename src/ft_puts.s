; *************************************************************************** ;
;                                                                             ;
;                                                         :::      ::::::::   ;
;    ft_bzero.c                                         :+:      :+:    :+:   ;
;                                                     +:+ +:+         +:+     ;
;    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        ;
;                                                 +#+#+#+#+#+   +#+           ;
;    Created: 2015/10/10 10:00:00 by gpueo--g          #+#    #+#             ;
;    Updated: 2015/10/10 10:00:00 by gpueo--g         ###   ########.fr       ;
;                                                                             ;
; *************************************************************************** ;

%define MACH_SYSCALL(n)	0x2000000 | n
%define STDOUT		0x01
%define WRITE		0x04

; *************************************************************************** ;

global _ft_puts
extern _ft_strlen

; *************************************************************************** ;

section .data

; *************************************************************************** ;

	newl db		  0x0A
	null db "(null)", 0x0A

; *************************************************************************** ;

section .text

; *************************************************************************** ;

_ft_puts:

	push rdi

	cmp  rdi, 0x00
	je   nul

	call _ft_strlen

	mov  rsi, rdi
	mov  rdi, STDOUT
	mov  rdx, rax

	mov  rax, MACH_SYSCALL(WRITE)

	syscall

	lea  rsi, [rel newl]
	mov  rdx, 0x01

	mov  rax, MACH_SYSCALL(WRITE)

	syscall
	jmp end

; *************************************************************************** ;

nul:

	lea  rsi, [rel null]
	mov  rdx, 0x07

	mov  rax, MACH_SYSCALL(WRITE)

	syscall