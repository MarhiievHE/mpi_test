all:		mpi_test

mpi_test:	main.o
			mpicc obj/*.o -o bin/mpi_test
			
main.o:		src/main.c
			mpicc -c src/main.c -o obj/main.o
			
clean:	
			rm -rf obj/*.o bin/*.*
