#!/bin/bash
#SBATCH --mail-user=caleb.moses@mila.quebec
#SBATCH --mail-type=BEGIN,END
#SBATCH --cpus-per-task=16
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=4g
#SBATCH --time=2:00:00
#SBATCH --account=caleb.moses
#SBATCH --partition=standard
#SBATCH --output=%x.o%A_%a

# Your commands here
