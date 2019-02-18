SRC=src
CODE = FD1D

kompile :
	gcc -o simula.bin ${SRC}/${CODE}.c -lm

jalankan:
	./simula.bin

semua: kompile semua
