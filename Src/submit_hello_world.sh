#!/bin/bash

#SBATCH --job-name=hello-world
#SBATCH --output=hello-world.%j.out
#SBATCH --partition=atesting
#SBATCH --qos=testing
#SBATCH --time=00:05:00
#SBATCH --nodes=1
#SBATCH --ntasks=1
#SBATCH --account=ucb-general

# For a longer/production run, use the general CPU partition instead:
#   #SBATCH --partition=acpu
#   #SBATCH --qos=cpu-normal

module purge
module load miniforge

python hello_world.py
