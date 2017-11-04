CC=clang
CFLAGS=-Werror
NOPEPATH=~/bin

all: nope

nope:
	$(CC) -o nope nope.c $(CFLAGS)

install: nope
	cp nope $(NOPEPATH)/nope

uninstall:
	rm $(NOPEPATH)/nope

clean:
	rm -f *.o nope
