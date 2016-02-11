CHK_SOURCES = src/A01.c
CHK_SOURCES_C = $(filter %.c,$(CHK_SOURCES))
outdir = bin

.PHONY: clean debug check-syntax check-syntax-clang check-syntax-gcc TA

all: debug

clean:
	-rm -ir $(outdir)/
	mkdir $(outdir)/
	
check-syntax: check-syntax-gcc check-syntax-clang
check-syntax-gcc:
	gcc -fsyntax-only -Wall -Wextra -pedantic -Wno-variadic-macros \
		-Wmissing-prototypes -Wstrict-prototypes \
		-Wold-style-definition -std=c99 $(CHK_SOURCES_C)

check-syntax-clang:
	clang -fsyntax-only -Wall -Wextra -pedantic -Wno-variadic-macros \
		-Wmissing-prototypes -Wstrict-prototypes \
		-Wold-style-definition -std=c99 $(CHK_SOURCES_C)
		
debug: check-syntax
	gcc -ggdb3 -O0 $(CHK_SOURCES_C) -o $(outdir)/A01 -std=c99
	
TA:
	gcc -Wall -o $(outdir)/A01 -std=c99 $(CHK_SOURCES_C)
