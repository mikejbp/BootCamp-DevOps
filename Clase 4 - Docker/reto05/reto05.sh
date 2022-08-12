#!/bin/bash

# Author: Miguel Briceno\

# Script para containerizar aplicacion con Node.js

# Creacion de la imagen
docker build -t hello-bootcamp .
docker images

# Creacion del contenedor con la imagen previa
docker run --name reto05 -d -p 4000:4000 hello-bootcamp:latest
docker ps

# Subir al repositorio en DockerHub
docker login
docker tag hello-bootcamp mikejbp/reto05docker:latest
docker push mikejbp/reto05docker:latest

exit 