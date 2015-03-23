#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: gpueo--g <gpueo--g@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2014/11/11 11:37:19 by gpueo--g          #+#    #+#              #
#    Updated: 2014/11/18 17:15:19 by gpueo--g         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

BDIR	=	bin/
SDIR	=	src/
ODIR	=	obj/

NAME	=	libfts.a
SRCS	=	ft_bzero.s \
			ft_strcat.s \
			ft_isalpha.s \
			ft_isdigit.s \
			ft_isalnum.s \
			ft_isascii.s \
			ft_isprint.s \
			ft_toupper.s \
			ft_tolower.s \
			ft_islower.s \
			ft_isupper.s \
			ft_strlen.s \
			ft_puts.s \
			ft_memset.s \
			ft_memcpy.s \
			ft_strdup.s \
			ft_cat.s
_OBJS	=	$(SRCS:.s=.o)
OBJS	=	$(patsubst %,$(ODIR)%,$(_OBJS))

CC		=	~/.brew/Cellar/nasm/2.11.08/bin/nasm
FLAGS 	=	-f macho64

all: scmsg $(NAME)
	@echo "\n--------------------------------------------------------------------------------"

scmsg:
	@echo "--------------------------- Start compilation libft ----------------------------\n"
scemsg:
	@echo "\033[34;1m>> \033[0mCompilation files ..."

mkdir:
	@if [ -d $(BDIR) ]; then \
		echo "\033[34;1m>> \033[0mBinaries directory already exist ...\033[73G"; \
	else \
		echo "\033[34;1m>> \033[0mCreating binaries directory ...\033[73G\c"; \
		mkdir $(BDIR); \
		echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"; \
	fi
	@if [ -d $(ODIR) ]; then \
		echo "\033[34;1m>> \033[0mObjects directory already exist ...\033[73G"; \
	else \
		echo "\033[34;1m>> \033[0mCreating objects directory ...\033[73G\c"; \
		mkdir $(ODIR); \
		echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"; \
	fi

$(NAME): mkdir scemsg $(OBJS)
	@ar rc $(BDIR)$(NAME) $(OBJS)
	@ranlib $(BDIR)$(NAME)
	@echo "\n\033[73G\033[37;1m[\033[34mDone !\033[37m]\033[0m"

$(ODIR)%.o: $(SDIR)%.s
	@$(CC) $(FLAGS) $< -o $@
	@echo "|\c)"

cleanobj:
	@echo "----------------------------- Deleting files libft -----------------------------\n"
	@echo "\033[34;1m>> \033[0mRemoving object files ...\033[73G\c"
	@rm -f $(OBJS)
	@echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"
	@echo "\033[34;1m>> \033[0mRemoving objects directory ...\033[73G\c"
	@rm -rf $(ODIR)
	@echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"
clean: cleanobj
	@echo "\n--------------------------------------------------------------------------------"

fclean: cleanobj
	@echo "\033[34;1m>> \033[0mRemoving : $(NAME) ...\033[73G\c"
	@rm -f $(BDIR)$(NAME)
	@echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"
	@echo "\033[34;1m>> \033[0mRemoving binaries directory ...\033[73G\c"
	@rm -rf $(BDIR)
	@echo "\033[37;1m[\033[34mDone !\033[37m]\033[0m"
	@echo "\n--------------------------------------------------------------------------------"
re: fclean all