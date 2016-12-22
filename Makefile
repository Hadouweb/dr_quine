CC = clang -Werror -Wextra -Wall

SRC_COLLEEN = Colleen.c
SRC_GRACE = Grace.c

OBJ_COLLEEN = $(SRC_COLLEEN:.c=.o)
OBJ_GRACE = $(SRC_GRACE:.c=.o)

NAME_COLLEEN = Colleen
NAME_GRACE = Grace

all: $(NAME_GRACE) $(NAME_COLLEEN)

$(NAME_GRACE): $(OBJ_GRACE)
	@$(CC) -o $@ $^
	@echo "\n\033[39mCompilation done.\033[0m"

$(NAME_COLLEEN): $(OBJ_COLLEEN)
	@$(CC) -o $@ $^
	@echo "\n\033[39mCompilation done.\033[0m"

%.o: %.c
	@$(CC) -o $@ -c $<
	@echo "\033[34m█\033[0m\c"

clean:
	@rm -rf $(OBJ_COLLEEN)
	@rm -rf $(OBJ_GRACE)

fclean: clean
	@rm -rf $(NAME_GRACE)
	@rm -rf $(NAME_COLLEEN)

re: fclean all

.PHONY: all clean fclean re