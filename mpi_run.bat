#!/bin/bash
NODES=4
MY_PROGRAM=bin/mpi_test
MACHINEFILE=name_of_machine_file
mpirun -np=$NODES -machinefile ./$MACHINEFILE ./$MY_PROGRAM > out.txt
