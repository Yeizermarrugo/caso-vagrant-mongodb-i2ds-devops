#!/bin/bash

# Actualizar lista de paquetes
sudo apt-get update

# Instalar paquetes necesarios

sudo apt-get install -y jupyter-notebook jupyter-core jupyter-client

#Import the public key used by the package management system
sudo apt-get install -y curl gnupg

curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | \
   sudo gpg -o /usr/share/keyrings/mongodb-server-7.0.gpg \
   --dearmor


# Importar la clave GPG de MongoDB
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4



# Añadir el repositorio de MongoDB
echo "deb [ arch=amd64,arm64 signed-by=/usr/share/keyrings/mongodb-server-7.0.gpg ] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-7.0.list

# Actualizar lista de paquetes nuevamente
sudo apt-get update

# Instalar MongoDB
sudo apt-get install -y mongodb
sudo apt-get install -y mongodb-org

# Iniciar y habilitar el servicio de MongoDB
sudo systemctl enable mongodb
sudo systemctl start mongodb

# Verificar el estado del servicio de MongoDB
sudo systemctl status mongodb


# Crea un usuario en MongoDB
echo "-------------------------- CREATE VAGRANT USER --------------------------"
mongo << EOF
use admin
db.createUser(
{
    user: "vagrant",
    pwd: "vagrant",
    roles: [
              { role: "userAdminAnyDatabase", db: "admin" },
              { role: "readWriteAnyDatabase", db: "admin" },
              { role: "dbAdminAnyDatabase", db: "admin" },
              { role: "clusterAdmin", db: "admin" }
           ]
})
EOF


# Reinicia MongoDB para aplicar los cambios
echo "-------------------------- RESTARTING MONGOD --------------------------"
sudo systemctl restart mongodb
