CC = gcc
CFLAGS = -Wall -Wextra

.PHONY: all clean

all: shell_exp

shell_exp: main.o
	$(CC) -o $@ $^

%.o: %.c
	$(CC) -o $@ $< $(CFLAGS)

clean: 
	rm -f main.o shell_exp