#!/bin/bash

sudo apt update
sudo apt install -y python3-pip
sudo apt install -y python

# Instalar pymongo
pip3 install pymongo
pip3 install jupyterlab


# Cambiar al directorio donde se encuentra el script query_covid19.py
cd /vagrant/provision

# Ejecutar el script Python de consulta
python query_covid19.py