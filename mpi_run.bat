#!/bin/bash
NODES=4
MY_PROGRAM=bin/mpi_test
MY_MPIRUN=/opt/openmpi/bin/mpirun
#MY_MPIRUN=/opt/mpich2/bin/mpirun
MACHINEFILE=name_of_machine_file
$MY_MPIRUN -n $NODES -machinefile ./$MACHINEFILE ./$MY_PROGRAM > out.txt
