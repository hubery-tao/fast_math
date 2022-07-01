FLAG = -march=native -O3 -Wall
BUILD_DIR = ./build
EX = ${BUILD_DIR}/time_test
OBJ = ${BUILD_DIR}/time_test.o
SRC = time_test.cpp
HEAD = simple_math.h fast_math.h
ASM = ${BUILD_DIR}/time_test.s

all: ${EX}

${EX}: ${OBJ}
	g++ ${FLAG} -o ${EX} ${OBJ}

${OBJ}: ${ASM}
	g++ ${FLAG} -c -o ${OBJ} ${ASM}

${ASM}: ${SRC} ${HEAD} Makefile
	g++ ${FLAG} -S -o ${ASM} ${SRC}

.PHONY:
clean:
	rm -rf ${BUILD_DIR}/*

run:
	${EX}