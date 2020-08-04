.DEFAULT_GOAL := all

MAKE = make
CC = gcc
MKDIR = mkdir

BIN = ./bin
SRC = .

HELLO = hello
HELLO_C = $(HELLO).c

EX2 = ex2
EX2_C = $(EX2).c

$(HELLO):
	$(CC) -o $(BIN)/$(HELLO) -static $(SRC)/$(HELLO_C)

$(EX2):
	$(CC) -o $(BIN)/$(EX2) -static $(SRC)/$(EX2_C)

setup:
	$(MKDIR) -p $(BIN)
all:
	$(MAKE) setup
	$(MAKE) $(HELLO)
	$(MAKE) $(EX2)
