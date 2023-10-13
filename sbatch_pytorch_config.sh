#!/bin/bash

### pytorch_config.sh
###########################################################################
## environment & variable setup
####### job customization
#SBATCH -N 1
#SBATCH -n 16
#SBATCH -t 1:00:00
#SBATCH -p a100_normal_q
#SBATCH --gres=gpu:1
#SBATCH -A personal
####### end of job customization
# end of environment & variable setup
###########################################################################
#### add modules:
## interact --account=personal --partition=a100_normal_q -N 1 -n 12 --gres=gpu:1
module load Anaconda3/2020.11
module list
nvidia-smi
conda create -n pytorch python=3.8 pip 
source activate pytorch
conda install ipykernel
pip install -r requirements.txt
#end of add modules
###########################################################################
###print script to keep a record of what is done
cat pytorch_config.sh
echo "pytorch_config output"
cat detect.py
###########################################################################
echo start load env and run python

source activate mypy3
python detect.py --weights yolov7-e6e.pt --classes 8 --source ../Downloads

exit;