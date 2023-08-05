# You should be using Cabal as the build system, but this demonstrates
# how to manage a simpla Haskell program with a Makefile similar to C programs.

SRC=print.hs
CC=ghc
BIN=print
OBJ=print.o
IFACE=print.hi
INTERPRETER=runghc

build:
	${CC} ${SRC} -o ${BIN}

run:
	./${BIN}

run-interpreted:
	${INTERPRETER} ${SRC}

clean:
	$(RM) ${OBJ}
	$(RM) ${IFACE}
	$(RM) ${BIN}
