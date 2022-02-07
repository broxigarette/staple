CC = gcc
CFLAGS = -c -std=c99 -g -Wall
LDFLAGS = -g -Wall
SRC = $(wildcard src/*.c)
HDR = $(wildcard include/*.h)
OBJ = $(SRC:.c=.o)
EXEC = staple


all: $(SRC) $(OBJ) $(EXEC)

$(EXEC): $(OBJ)
	$(CC) $(LDFLAGS) $^ -o $@

%.o: %.c $(HDR)
	$(CC) $(CFLAGS) $< -o $@

clean:
	rm src/*.o $(EXEC)