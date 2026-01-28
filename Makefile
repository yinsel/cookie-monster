all:
	x86_64-w64-mingw32-gcc -std=c17 -c cookie-monster-bof.c -o cookie-monster-bof.x64.o
	x86_64-w64-mingw32-strip --strip-unneeded cookie-monster-bof.x64.o
	i686-w64-mingw32-gcc -c -std=c17 cookie-monster-bof.c -o cookie-monster-bof.x86.o
clean:
	rm cookie-monster.x64.o
	rm cookie-monster.x86.o
