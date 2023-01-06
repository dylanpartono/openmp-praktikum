#!/bin/bash
#SBATCH -A kurs00062
#SBATCH -p kurs00062
#SBATCH --reservation=kurs00062
#SBATCH -J quicksort
#SBATCH --mail-type=ALL
#SBATCH -e /work/home/kurse/kurs00062/ys49dara/qsort/quicksort.err
#SBATCH -o /work/home/kurse/kurs00062/ys49dara/qsort/quicksort.out
#SBATCH -n 16
#SBATCH --mem-per-cpu=3800
#SBATCH -t 00:10:00

module purge
module load gcc/10

cd /work/home/kurse/kurs00062/ys49dara/qsort/
./qsort  
