/*
 *	mpi_test
 *	Copyright © 2017 MargiievHE (Marhiiev Heorhii)
 *	Author:		Georg (Heorhii Marhiiev)
 *	e-mail1:	margievGE@gmail.com
 *	e-mail2:	marghiievHE@gmail.com
 */
//----------------------------------------------------------------------
#include <mpi.h>
#include <unistd.h>
#include <stdio.h>
//----------------------------------------------------------------------
int main(int argc, char* argv[])
{
	int		MyRank;
	int		NumProcs;
	char	HostName[256];
	MPI_Init(&argc, &argv);
	MPI_Comm_size(MPI_COMM_WORLD, &NumProcs);
	MPI_Comm_rank(MPI_COMM_WORLD, &MyRank); 
	gethostname(HostName, sizeof(HostName) / sizeof(HostName[0]));
	printf("Process %d of %d is running on %s\n",MyRank,NumProcs,HostName);
	MPI_Finalize();
	return 0;
}
//----------------------------------------------------------------------
