# YOLOv7 Vessel Processing

### What is this?
- yolov7_vessel is forked from yolov7
- yolov7_vessel is for the purpose of processing a dataset of vessels by cropping the image to only include the vessel, and saving it as a new image in the specified directory
- This is built on the pytorch machine learning library and the YOLOv7 computer vision architecture

### Differences from TODO/YOLOv7 repository:
- Identifies each vessel in the dataset and takes the image with the largest area
- Saves cropped image instead of bounding box
- Bounding box highlighting has been removed

### How to get data and pre-trained model
- Download gdown
```
pip install gdown
```
-Download dataset
```
gdown https://drive.google.com/uc?id=1PMxtrY2bjqX_PRXW8rPZXIsndhgz5xKG
```
-Download model weights
```
gdown https://drive.google.com/uc?id=1EmwgKUahZeiSuRNrBRUA_92lFHHz9CPu
```
- Unpack data
```
tar -xzf Downloads.tar.gz
```

### Processing Data
#### Process data using traditional cpu/gpu set up:
1) Make sure anaconda is installed
2) Clone repository
```
git clone https://github.com/Frankovich/yolov7_vessel.git
```
4) Create environment
```
conda create -n pytorch python=3.8 pip
```
3) Activate environment and install libraries
```
source activate pytorch
conda install ipykernel
pip install -r requirements.txt
```
4) Execute file
- Assuming weights have been downloaded inside of the YOLOv7_vessel directory
- Assuming Downloads.tar.gz was downloaded and unpacked into Downloads in the parent directory
- "--weights yolov7-e6e.pt" specifies local model
- "--classes 8" specifies the 8th class, which is YOLOv7's vessel classification
- "--source ../Downloads" specifies the input data's directory
```
python detect.py --weights yolov7-e6e.pt --classes 8 --source ../Downloads
```
5) Image outputs have been saved into the yolov7_vessel/runs/detect directory

#### Process data using Slurm Workload Manager on a GPU Computer Cluster:


