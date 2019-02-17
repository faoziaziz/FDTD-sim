SRC=src
CODE = FD1D

kompile :
	gcc -o simula.bin ${SRC}/${CODE}.c

jalankan:
	./simula.bin

semua: kompile semua
