CC=clang
CFLAGS=-Werror
NOPEPATH=~/bin

all: nope

nope:
	$(CC) -o nope nope.c $(CFLAGS)

install: nope directories
	cp nope $(NOPEPATH)/nope

uninstall:
	rm $(NOPEPATH)/nope

directories:
	mkdir -p $(NOPEPATH)

clean:
	rm -f *.o nope
