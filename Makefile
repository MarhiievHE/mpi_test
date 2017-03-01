#COMPILER=/opt/openmpi/bin/mpicc
COMPILER=/opt/mpich2/bin/mpicc

all:		mpi_test

mpi_test:	main.o
			$(COMPILER) obj/*.o -o bin/mpi_test
			
main.o:		src/main.c
			$(COMPILER) -c src/main.c -o obj/main.o
			
clean:	
			rm -rf obj/*.o bin/*.*
