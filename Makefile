CHK_SOURCES = test.c
CHK_SOURCES_C = $(filter %.c,$(CHK_SOURCES))
outdir = bin

.PHONY: submission clean debug static windows-static compress

all: debug

# Placeholder, needs to be fixed.
submission:
	git gc --aggressive --prune=now && git archive HEAD --format=zip -9 > "$(printf "r%s.%s - %s - %s.zip" "$(git rev-list --count HEAD)" "$(git rev-parse --short HEAD)" "$(TZ='Canada/Toronto' date --iso-8601=seconds)" "$(git --no-pager show -s --format='%an' HEAD)" | sed s/:/./g)"

clean:
	-rm -i *.zip $(outdir)/*

debug:
	gcc -ggdb3 -O0 $(CHK_SOURCES_C) -o $(outdir)/test

static:
	gcc -s -w -static -m32 -O3 $(CHK_SOURCES_C) -o $(outdir)/test
	make compress

windows-static:
	i686-w64-mingw32-cc -s -w -static -O3 $(CHK_SOURCES_C) -o $(outdir)/test.exe
	make compress

compress:
	strip --strip-all $(outdir)/*
	upx --ultra-brute -q $(outdir)/*
