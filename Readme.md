# Resolución 2da parte. Clase 2

## **¿Por qué el archivo historia.log no apareció?**

El archivo **historia.log** no apareció debido a que éste no fue añadido a la etapa **stage**, quedando en la etapa anterior **unstaged**, por  lo tanto nunca fue comprometido (**commited**).
Al realizar el comando *git checkout -- .* o bien el comando *git reset --hard HEAD~1* o un *git reset HEAD@{index}* (en index indicando el número de índice según el commit), se han restaurado todos los archivos que han sido comprometidos. Ni el archivo **historia.log** ni tampoco.