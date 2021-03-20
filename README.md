# OpenVINO Notebooks Installation Instructions

Python 3.8 is not supported on Linux. See the [OpenVINO PIP installation guide](https://github.com/openvinotoolkit/openvino/blob/releases/2021/3/docs/install_guides/pypi-openvino-dev.md) for supported Python versions and operationg systems. 

## 1. Create a virtual environment.

**NOTE:**
* on Windows, if you installed multiple Python versions, you can use `py -3.7` to specify a specific version (in this case 3.7)
* on Linux, you may need to type `python3` instead of `python` and you may need to install pip: https://pip.pypa.io/en/stable/installing/

```
python -m pip install --user virtualenv
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

## 5. Start the notebook!

Note: if necessary, **choose the openvino_env kernel** (either when you get a popup or from the Kernel->Change Kernel menu)

```
jupyter lab
```

Select a notebook from the file browser at the left

# Troubleshooting

On Linux, if you get the error "libpython3.7m.so.1.0: cannot open shared object file: No such object or directory" install the required package with `sudo apt install libpython3.7-dev`
