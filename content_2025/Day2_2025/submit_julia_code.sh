#!/bin/bash
#SBATCH --account=a9009  ## Required: your Slurm account name, i.e. eXXXX, pXXXX or bXXXX
#SBATCH --partition=a9009 ## Required: buyin, short, normal, long, gengpu, genhimem, etc.
#SBATCH --time=00:30:00       ## Required: How long will the job need to run?  Limits vary by partition
#SBATCH --nodes=1             ## How many computers/nodes do you need? Usually 1
#SBATCH --ntasks=1            ## How many CPUs or processors do you need? (default value 1)
#SBATCH --mem=5G              ## How much RAM do you need per computer/node? G = gigabytes
#SBATCH --job-name=Julia-test       ## Used to identify the job 

# load any modules needed
module load julia/1.11.4

# run any commands or code files
julia example_code.jl
