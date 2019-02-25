SRC=src
CODE = oneEleventh

kompile :
	gcc -o simula.bin ${SRC}/${CODE}.c -lm

jalankan:
	./simula.bin

semua: kompile jalankan
