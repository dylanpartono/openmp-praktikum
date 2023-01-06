#!/bin/bash
#SBATCH -A kurs00062
#SBATCH -p kurs00062
#SBATCH --reservation=kurs00062
#SBATCH -J daxpy
#SBATCH --mail-type=ALL
#SBATCH -e /work/home/kurse/kurs00062/ys49dara/daxpy.err.all
#SBATCH -o /work/home/kurse/kurs00062/ys49dara/daxpy.out.all
#SBATCH -n 16
#SBATCH --mem-per-cpu=3800
#SBATCH -t 00:10:00

module purge
module load gcc/10

cd /work/home/kurse/kurs00062/ys49dara/
./daxpy  
