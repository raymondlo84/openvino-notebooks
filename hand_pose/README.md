Create a virtual environment with `python -m venv openvino_env`. Activate it
with `openvino_env\Scripts\activate` on Windows or `source
openvino_env/bin/activate` on Linux

```
pip install --upgrade pip
pip install openvino-2021.3.0-2525-...whl opencv-python jupyterlab
python -m ipykernel install --user --name openvino_env
jupyter lab
```
