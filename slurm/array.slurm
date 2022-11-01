#!/bin/sh
#SBATCH --mail-user=caleb.moses@mila.quebec
#SBATCH --mail-type=BEGIN,END
#SBATCH --cpus-per-task=1
#SBATCH --nodes=1
#SBATCH --ntasks-per-node=1
#SBATCH --mem-per-cpu=4g
#SBATCH --time=24:00:00
#SBATCH --account=caleb.moses
#SBATCH --partition=standard
#SBATCH --output=job_output.txt
#SBATCH --array 1-10

# Access array id via ${SLURM_ARRAY_TASK_ID}

# Your command here