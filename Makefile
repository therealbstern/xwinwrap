.PHONY: all clean

CFLAGS=-O2 -march=i686 -mtune=i686 -Werror -Wall -Wstrict-prototypes -Wmissing-prototypes -Wmissing-declarations -Wredundant-decls
LDFLAGS=-lX11 -lXext -lXrender

all: xwinwrap

xwinwrap: xwinwrap.o

xwinwrap.o: xwinwrap.c

clean:
	rm -rf xwinwrap xwinwrap.o
