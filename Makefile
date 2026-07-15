CC = gcc
CFLAGS = -Wall -Wextra
SRCS = main.c auxiliar_functs.c
OBJ = $(SRCS:.c=.o)
BIN = shell_exp


.PHONY: all clean

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $^ -o $@

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

clean: 
	rm -f $(OBJ) $(BIN)