# ONNX/PyTorch/OpenVINO notebook installation instructions

Note that this is a WIP demo! Tested on Windows and Linux with Python 3.7

All required Python packages are installed in the notebook. It is highly recommended to make a virtual environment to run this notebook. The steps below explain how to create a virtual environment with Jupyter Lab.

## 1. Create a virtual environment.

**NOTE:**
* on Windows, if you installed multiple Python versions, you can use `py -3.7` to specify a specific version (in this case 3.7)
* on Linux, you may need to type `python3` instead of `python` and you may need to install pip: https://pip.pypa.io/en/stable/installing/

```
python -m venv openvino_env  
```

## 2. Activate the virtual environment

On Linux:
```
source openvino_env/bin/activate
```
On Windows:
```
openvino_env\Scripts\activate
```

## 3. Upgrade pip and install Jupyter Lab

Upgrade pip to ensure compatibility with newest OpenVINO versions. 

```
python -m pip install --upgrade pip
pip install jupyterlab
```

## 4. Install the virtualenv kernel in Jupyter

```
python -m ipykernel install --user --name openvino_env
```

## 5. Start the demo!

Note: if necessary, **choose the openvino_env kernel** (either when you get a popup or from the Kernel->Change Kernel menu)

```
jupyter notebook pytorch_onnx_openvino.ipynb  # jupyter lab also works
```

# Troubleshooting

On Linux, if you get the error "libpython3.7m.so.1.0: cannot open shared object file: No such object or directory" install the required package with `sudo apt install libpython3.7-dev`
