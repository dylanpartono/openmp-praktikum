#!/bin/bash

#SBATCH -J nbody_par_case_z
#SBATCH --mail-type=ALL

#SBATCH -a 1,2,4,8,16%1
#SBATCH -e /home/kurse/kurs00062/ys49dara/ParallelNBody/nbody_case_z_par.err.%a
#SBATCH -o /home/kurse/kurs00062/ys49dara/ParallelNBody/nbody_case_z_par.out.%a
#SBATCH -t 00:10:00

#SBATCH --mem-per-cpu=10G
#SBATCH -n 1
#SBATCH -c 16
##SBATCH --exclusive
##SBATCH --cpu-freq=Medium-Medium

#SBATCH -p kurs00062
#SBTACH -A kurs00062
#SBATCH --reservation=kurs00062

set -u

sjobs $SLURM_JOB_ID

module purge
module load gcc/10 llvm/12
module load openmpi

cd /home/kurse/kurs00062/ys49dara/ParallelNBody/
./bin/spp-nbody-omp z.txt $SLURM_ARRAY_TASK_ID
