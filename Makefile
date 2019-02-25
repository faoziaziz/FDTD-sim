SRC=src
CODE = rootTest

kompile :
	gcc -o simula.bin ${SRC}/${CODE}.c -lm

jalankan:
	./simula.bin

semua: kompile jalankan
