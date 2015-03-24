/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libfts.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2015/02/11 14:06:37 by gpueo--g          #+#    #+#             */
/*   Updated: 2015/02/13 16:06:09 by gpueo--g         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTS_H
# define LIBFTS_H

# include <stdlib.h>
# include <stdio.h>
# include <strings.h>

void	ft_bzero	(void *s, size_t len);
void	ft_cat		(int fd);
int		ft_isalnum	(int i);
int		ft_isalpha	(int i);
int		ft_isascii	(int i);
int		ft_isdigit	(int i);
int		ft_islower	(int i);
int		ft_isprint	(int i);
int		ft_isupper	(int i);
void	*ft_memcpy	(void *dest, const void *src, size_t n);
void	*ft_memset	(void *str, int c, size_t n);
int		ft_puts		(const char *str);
char	*ft_strcat	(char *dest, char *str);
char	*ft_strdup	(const char *s);
int		ft_strlen	(char *str);
int		ft_tolower	(int i);
int		ft_toupper	(int i);
/*
char	*ft_strncat(char *dest, char *str, size_t n);
void 	*ft_memchr(const void *s, int c, size_t n);
char	*ft_strcpy(char *dest, const char *src);
char	*ft_strncpy(char *dest, const char *src, size_t n);
*/

#endif
