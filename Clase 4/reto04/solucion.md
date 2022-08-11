# Solución - Reto 4: Contenedores Docker

### Ejercicio 1 - Crear imagen de `Apache`

Crea una imagen con un servidor web Apache y el mismo contenido que en la carpeta [content](content).

Usa docker build para crear la imagen llamada ```simple-apache:new``` 

<img src="./assets/reto4_2.png" alt="step2" />
<br>

1. Cambiar
2. Buscar en ```Docker Hub``` la imagen de ```Apache```
3. Cambiar los valores para que:
   1. La imagen base sea este otro servidor
   2. El contenido se copie donde apache sirve los archivos.
<br>

**Resultado**: <br>

<img src="./assets/reto4_1.png" alt="step1" />

<hr />

### Ejercicio 2 - Crear contenedor desde la nueva imagen

- Ejecutar tu nueva imagen
- El contenedor se debe llamar ```my_apache```
- Debes usar el puerto __5050__ de tu __localhost__ para poder acceder a él.

<img src="./assets/reto4_2.1.jpg" alt="step2.1" />
<img src="./assets/reto4_2.2.jpg" alt="step2.2" />


__Resultado:__

<img src="./assets/reto4_2.3.jpg" alt="step2.3" />

<hr />

### Ejercicio 3 - Inspeccionar la imagen

Averiguar cuántas capas tiene mi nueva imagen

**Respuesta**:

<img src="./assets/reto4_3.png" alt="step3" />

La imagen `simple-apache:new` está constituida de 7 capas.

