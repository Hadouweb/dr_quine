CC = clang -Werror -Wextra -Wall

SRC_COLLEEN = colleen.c\

OBJ_COLLEEN = $(SRC_COLLEEN:.c=.o)

NAME_COLLEEN = Colleen

all: $(NAME_COLLEEN)

$(NAME_COLLEEN): $(OBJ_COLLEEN)
	@$(CC) -o $@ $^
	@echo "\n\033[39mCompilation done.\033[0m"

%.o: %.c
	@$(CC) -o $@ -c $<
	@echo "\033[34m█\033[0m\c"

clean:
	@rm -rf $(OBJ_COLLEEN)

fclean: clean
	@rm -rf $(NAME_COLLEEN)

re: fclean all

.PHONY: all clean fclean re