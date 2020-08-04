.DEFAULT_GOAL := all

MAKE = make
CC = gcc
MKDIR = mkdir

BIN = ./bin
SRC = .

HELLO = hello
HELLO_C = $(HELLO).c

$(HELLO):
	$(CC) -o $(BIN)/$(HELLO) $(SRC)/$(HELLO_C)

setup:
	$(MKDIR) -p $(BIN)
all:
	$(MAKE) setup
	$(MAKE) $(HELLO)
