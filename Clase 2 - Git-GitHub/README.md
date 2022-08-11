# Resolución 2da parte. Clase 2

## **¿Por qué el archivo historia.log no apareció?**

El archivo **historia.log** no apareció debido a que éste no fue añadido a la etapa **stage**, quedando en la etapa anterior **unstaged**, por  lo tanto nunca fue comprometido (**commited**).
<br><br>
Al realizar el comando *git checkout -- .* o bien el comando *git reset --hard HEAD~1* o un *git reset HEAD@{index}* (en index indicando el número de índice según el commit), se han restaurado todos los archivos que han sido comprometidos. Ni el archivo **historia.log** ni tampoco la carpeta **01-tarea** habían sido parte de algún commit, por ende no se restauraron.

<hr />

# Resolución - Parte 3.

Participación en equipo, repositorio [295_reto_1_2](https://github.com/starmaster1990/295_reto_1_2/tree/main/exercise).

- Creé mi rama y tuve que realizar los pasos descritos en el [reto 3](https://github.com/roxsross/bootcamp-1-challenge/blob/master/Readme.md).
- **Pull request** a `main`
- Resolución de errores y conflictos en la rama principal.
