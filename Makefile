CC = gcc
CFLAGS = -O0
SRCS = main.c auxiliar_functs.c
OBJ = $(SRCS:.c=.o)
BIN = shell_exp

OBJ_DEBUG = $(SRCS:.c=.debug)
BIN_DEBUG = $(BIN).debug
FLAGS_DEBUG = -Wall -Wextra -Og

.PHONY: all clean rebuild rebuild_debug

all: $(BIN)

$(BIN): $(OBJ)
	$(CC) $^ -o $@

%.o: %.c
	$(CC) -c $< -o $@ $(CFLAGS)

%.debug: %.c
	$(CC) -c -g $< -o $@ $(FLAGS_DEBUG)

debug: $(OBJ_DEBUG)
	$(CC) $^ -o $(BIN_DEBUG)

clean: 
	rm -f $(OBJ) $(BIN) $(BIN_DEBUG) $(OBJ_DEBUG)

rebuild_release:
	make clean
	make all

rebuild_debug:
	make clean
	make debug