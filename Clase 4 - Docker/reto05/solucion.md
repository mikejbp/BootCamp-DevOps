# Solución - Reto 5: Containerizar aplicacion `Node.js`

1. Crear archivo `Dockerfile`:

<img src="./assets/reto5_Dockerfile.png" alt="dockerfile" />

<hr />

2. Construir la imagen:

<img src="./assets/reto5_1.1-img.png" alt="step1.1-img" />
<img src="./assets/reto5_1.2-img.png" alt="step1.2-img" />
<img src="./assets/reto5_1.3-img.png" alt="step1.3-img" />

- Se crea la imagen en base al [Dockerfile](Dockerfile) con el comando:
`docker build -t hello-bootcamp .`
- Una vez hecho, inspeccionamos con: `docker ps` para corroborar que la imagen nueva está allí.

<hr />

3. 





Dockeriza la carpeta [hello-bootcamp](hello-bootcamp) Antes de hacerlo ¡pruébala en local! Genera la imagen con el VS Code

- Ejecuta un contenedor con la imagen

- Subir la aplicacion en registry

- Crear el Script que permita realizar todo lo antes mencionado


