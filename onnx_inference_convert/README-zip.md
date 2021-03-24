# ONNX/PyTorch/OpenVINO notebook installation instructions


## 1. Install the OpenVINO development package

Follow the instructions on https://github.com/openvinotoolkit/openvino/blob/master/docs/install_guides/pypi-openvino-dev.md to install OpenVINO

## 2. Activate the virtual environment

If you just completed the previous step and already activated the virtual environment, you can skip this step.

On Windows:
```
openvino_env\Scripts\activate
```

On Linux:
```
source openvino_env/bin/activate
```

## 3. Download the zip file with the notebook

Download the file from https://github.com/helena-intel/openvino-notebooks/releases/download/openvino-notebooks-develop/openvino-notebooks-develop.zip .

## 4. Copy the downloaded zip file

Copy the zip file to the directory that contains the created virtual environment.

Open a file browser to the current directory with

On Windows (note the dot at the end of the command):
```
explorer .
```

On Ubuntu Linux, with Nautilus installed:
```
nautilus --browser .
```

## 5. Unzip the zip file.

Unzip the zip file. It will create a directory in the current folder with the `openvino_notebooks`

## 6. Go to the directory with the notebook

```
cd openvino_notebooks\onnx_inference_convert
```

## 7. Install the required packages to run the notebook

```
pip install -r requirements.txt
```

## 8. Install the virtualenv kernel in Jupyter

```
python -m ipykernel install --user --name openvino_env
```

## 9. Start the demo!

```
jupyter lab
```

Select the notebook from the file browser at the left of the screen.

# Troubleshooting

* On Linux, if you get the error "libpython3.7m.so.1.0: cannot open shared object
file: No such object or directory" install the required package with `sudo apt
install libpython3.7-dev`.

* If you get an ImportError when running the notebook, make sure that you have
run Step 7. If necessary, select the openvino_env kernel from the
Kernel->Change Kernel menu.

