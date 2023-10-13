What is this?
- yolov7_vessel is forked from yolov7
- yolov7_vessel is for the purpose of processing a dataset of vessels by cropping the image to only include the vessel, and saving it as a new image in the specified directory
- This is built on the pytorch machine learning library

How to get data
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

Process data using traditional cpu/gpu set up:
1) Make sure anaconda is installed
2) Create environment
```
conda create -n pytorch python=3.8 pip
```
3) Activate environment and install libraries
```
source activate pytorch
conda install ipykernel
pip install -r requirements.txt
```
4) 
