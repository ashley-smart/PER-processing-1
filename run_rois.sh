#!/bin/bash
#SBATCH --job-name=rois_bruker
#SBATCH --time=4-00:00:00
#SBATCH --ntasks=1
#SBATCH --partition=trc
#SBATCH --cpus-per-task=2
#SBATCH --output=./roi-logs/mainlog.out
#SBATCH --open-mode=append
#SBATCH --mail-type=ALL

ml python/3.6.1

date
python3 -u /home/users/nannaman/projects/PER-processing/read_rois.py
