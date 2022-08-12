#Imagen que voy a utilizar como base
FROM node:lts-alpine3.16

#Etiquetado
LABEL maintainer="migueljosebp@gmail.com"
LABEL project="bootcamp"

WORKDIR /usr/src/app

COPY ./hello-bootcamp .

RUN npm install

CMD [ "npm", "start" ]