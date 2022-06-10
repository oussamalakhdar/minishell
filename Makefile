# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: olakhdar <olakhdar@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2022/06/02 10:46:18 by olakhdar          #+#    #+#              #
#    Updated: 2022/06/10 21:54:33 by olakhdar         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = minishell

CC = gcc

FLAGS =  -Wall -Werror -Wextra -lreadline -g

FILES = minishell.c ft_split.c lists.c minishell_utils.c lexer.c \

OBJ=$(FILES:.c=.o)

all: $(NAME)

$(NAME): $(OBJ)
	$(CC) $(FLAGS) $(OBJ) -o $(NAME)

clean:
	rm -f $(OBJ)

fclean: clean
	rm -rf $(NAME)

re: fclean all
