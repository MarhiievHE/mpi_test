#!/bin/bash
NODES=4
MY_PROGRAM=bin/mpi_test
#MY_MPIRUN=/opt/openmpi/bin/mpirun
MY_MPIRUN=/opt/mpich2/bin/mpirun
MACHINEFILE=mfile
$MY_MPIRUN -n $NODES -machinefile ./$MACHINEFILE ./$MY_PROGRAM > out.txt
