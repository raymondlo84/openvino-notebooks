# Monodepth demo installation instructions

Note that this is a WIP demo! Tested on Windows with Python 3.6 and 3.7


## 1. Clone the repository, go to the directory, and checkout the develop branch

```
git clone https://github.com/helena-intel/openvino-notebooks.git
cd openvino-notebooks
git checkout develop
cd 201-vision-monocular-depth-estimation
```

## 2. Create a Virtual Environment.

**NOTE:**
* On Windows, if you installed multiple Python versions, you can use `py -3.7` instead of `python` to specify a version
* On Linux or macOS you may need to type `python3` instead of `python`

```
python -m pip install --user virtualenv 
python -m venv openvino_env  
```

## 3. Activate the Virtual Environment

On Linux:
```
source openvino_env/bin/activate
```
On Windows:
```
openvino_env\Scripts\activate
```

## 4. Install the required Python packages

Upgrade pip to ensure compatibility with newest OpenVINO version and install the requirements for the notebook

```
python -m pip install --upgrade pip==20.1.1
pip install -r requirements.txt
```


## 5. Install the virtualenv kernel in Jupyter

```
python -m ipykernel install --user --name openvino_env
```

## 6. Start the demo!

Note: if necessary, **choose the openvino_env kernel** (either when you get a popup or from the Kernel->Change Kernel menu)

```
jupyter notebook 201-vision-monocular-depth-estimation.ipynb  # jupyter lab also works
```

# Troubleshooting

On Linux, if you get the error "libpython3.7m.so.1.0: cannot open shared object file: No such object or directory" install the required package with `sudo apt install libpython3.7-dev`
