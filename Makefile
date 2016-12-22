CC = clang -Werror -Wextra -Wall

SRC_COLLEEN = Colleen.c
SRC_GRACE = Grace.c
SRC_SULLY = Sully.c

OBJ_COLLEEN = $(SRC_COLLEEN:.c=.o)
OBJ_GRACE = $(SRC_GRACE:.c=.o)
OBJ_SULLY = $(SRC_SULLY:.c=.o)

NAME_COLLEEN = Colleen
NAME_GRACE = Grace
NAME_SULLY = Sully

all: $(NAME_GRACE) $(NAME_COLLEEN) $(NAME_SULLY)

$(NAME_GRACE) : $(OBJ_GRACE)
	@$(CC) -o $@ $^

$(NAME_COLLEEN) : $(OBJ_COLLEEN)
	@$(CC) -o $@ $^

$(NAME_SULLY): $(SRC_SULLY)
	@$(CC) -o $@ $^

%.o: %.c
	@$(CC) -o $@ -c $<
	@echo "\033[34m█\033[0m\c"

clean:
	@rm -rf $(OBJ_COLLEEN)
	@rm -rf $(OBJ_GRACE)
	@rm -rf $(OBJ_SULLY)

fclean: clean
	@rm -rf $(NAME_GRACE)
	@rm -rf $(NAME_COLLEEN)
	@rm -rf $(NAME_SULLY)

re: fclean all

.PHONY: all clean fclean re
