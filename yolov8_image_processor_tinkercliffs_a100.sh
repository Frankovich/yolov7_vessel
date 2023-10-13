#!/bin/bash
#
#SBATCH --job-name pytorch_vessel_image_processing
#SBATCH --out pytorch_vessel_image_processing.out
#SBATCH -t 00:10:00  # 10 min

##SBATCH --partition normal_q

#SBATCH -N1 --ntasks-per-node=1
#SBATCH --gres gpu:1
#SBATCH -p a100_dev_q

# Load modules
module reset
module load cuda11.2/toolkit
module load anaconda3  # Load Anaconda module

# Create and activate a new conda environment
# Replace 'myenv' with a name of your choice
# Replace 'python=3.8' with your desired Python version
conda create --name myenv python=3.8 --yes
source activate myenv

# Install dependencies from requirements.txt
pip install -r requirements.txt

# Run your script
echo "DETECT_PY_SCRIPT: Normal beginning of execution."
python detect.py --weights yolov7-e6e.pt --classes 8 --source ../Downloads
echo "DETECT_PY_SCRIPT: Normal end of execution."

# Deactivate the conda environment after your script runs
conda deactivate

# --weights yolov7-e6e.pt --classes 8 --source ../../scraping/auto_scraper/Downloads