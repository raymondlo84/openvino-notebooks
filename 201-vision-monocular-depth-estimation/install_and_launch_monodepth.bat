py -3.7 -m pip install virtualenv --user
py -3.7 -m venv openvino_env_test
openvino_env_test\Scripts\activate && python -m pip install --upgrade pip && python -m pip install -r requirements.txt && python -m ipykernel install --user --name openvino_env_test && jupyter lab

