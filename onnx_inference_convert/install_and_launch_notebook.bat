py -3.7 -m pip install virtualenv --user
py -3.7 -m venv openvino_env
openvino_env\Scripts\activate && python -m pip install --upgrade pip==20.1.1 && python -m pip install -r requirements.txt && python -m ipykernel install --user --name openvino_env && jupyter lab

