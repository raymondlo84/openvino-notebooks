# Hand pose demo installation instructions

Run the hand pose demo on your own webcam enabled computer.

Note that this is a WIP demo! Tested on Windows with Python 3.6 and 3.7


## 1. Clone the repository, go to the directory, and checkout the develop branch

```
git clone https://github.com/helena-intel/openvino-notebooks.git
cd openvino-notebooks
git checkout develop
```

## 2. Create and activate a virtual environment.

```
# tip: on Windows, if you installed multiple Python versions, you can use py -3.7 to specify one
python -m venv openvino_env  
```
On Linux:
```
source openvino_env/bin/activate
```
On Windows:
```
openvino_env\Scripts\activate
```

## 3. Install the required Python packages

Upgrade pip to ensure compatibility with newest OpenVINO versions. Replace OPENVINO_WHEEL with the filename to the openvino-2021.3 wheel

```
python -m pip install --upgrade pip
pip install OPENVINO_WHEEL_FILE
pip install Pillow opencv-python jupyterlab
```

## 4. Install the virtualenv kernel in Jupyter

```
python -m ipykernel install --user --name openvino_env
```

## 5. Start the demo!

Note: if necessary, choose the openvino_env kernel (either when you get a popup or from the Kernel->Change Kernel menu)

```
cd hand_pose
jupyter notebook hand_pose_video.ipynb  # jupyter lab also works
```
