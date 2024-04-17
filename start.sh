#!/bin/bash

python3 -m venv .venv
source $PWD/.venv/bin/activate
python3 --version
python3 -m pip install --upgrade pip
python3 -m pip install --upgrade setuptools
python3 -m pip install jupyterlab_sos
python3 -m pip install sos
python3 -m pip install sos-pbs
#python3 -m pip install sos-notebook
python3 -m pip install sos-papermill
python3 -m pip install sos-r
python3 -m pip install -r requirements.txt
#python3 -m sos_notebook.install
jupyter kernelspec list
jupyter lab --ip='*' --NotebookApp.token='' --NotebookApp.password=''
deactivate