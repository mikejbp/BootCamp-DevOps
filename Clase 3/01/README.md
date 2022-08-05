# Reto 01 - Linux
En este **README** presento los pasos que realicé para solucionar cada uno de los ejercicios de este reto.<br>
Antes que nada, procedí a realizar una serie de pasos antes de empezar con el ejercicio 1 del reto.
<hr />

En mi **Virtual Machine (VM)**:
- Fui al Escritorio
- Creé una carpeta nueva
- Luego me posicioné en ésta

```
cd Desktop/
mkdir DevOps_challenges
cd DevOps_challenges/
```

- Procedí a clonar el repositorio del challenge 2
- Lo inicialicé
- Cambié el nombre de la rama principal
- Me fijé en el listado del repositorio remoto y su origen
- Procedí a eliminar dicho repositorio
- Añadí uno nuevo que es el repositorio actual
- Me posicioné en el repositorio

```
git clone https://github.com/roxsross/bootcamp-2-challenge
git init
git branch -M main
git remote -v
git remote rm origin
git remote add origin https://github.com/mikejbp/Bootcamp-DevOps.git
cd bootcamp-2-challenge/
```
<hr />

## Ejercicio 1 -  Manejo de archivos
- Posicionarse en la carpeta `01`
- Crear carpeta carpeta/directorio `foo`
- Dirigirse a la carpeta `foo`
- Crear dos carpetas `dummy` y `empty`
- Posicionarse en `dummy` y crear dos archivos `file1.txt` y `file2.txt` 
- Indicar que me escriba el texto `"Me encanta bash!!"` dentro del archivo `file1.txt`
- Mostrar el texto en `file1.txt`
- Dejar el archivo `file2.txt` vacío

```
cd 01/
mkdir foo
cd foo/
mkdir 'dummy' 'empty'
cd dummy/
touch file1.txt file2.txt
echo "Me encanta bash!!" >> file1.txt
cat file1.txt
```

## Ejercicio 2 - Manejo de contenido de archivos
Para éste ejercicio solo fueron solicitadas dos ✌  cosas:

- Pasar el contenido de `file1.txt` al archivo file2.txt (una ☝🏻)
- Me dirijo una carpeta atrás (en este caso sería `foo/`)
- Muevo el archivo `file2.txt` de la carpeta `dummy/` a la carpeta `empty/` (dos ✌)

```
cat file1.txt >> file2.txt
cd .. 
mv dummy/file2.txt empty/
```

## Ejercicio 3 - Argumentos del script
Para este tercer ejercicios, se pidió realizar un Script que automatice los pasos de los ejercicios anteriores. <br>
Además, utilice el archivo `file1.txt` para agregar contenido por medio de un **parámetro**.

- Me dirijo un directorio atrás (carpeta `01/`)
- Comando **sudo** y le indico el super usuario
- Escribo la contraseña para los permisos
- Creo un script llamado `scriptEjer3.sh` y poder editarlo con **nano**

```
cd ..
sudo
sudo su
*contraseña*
nano scriptEjer3.sh
```

Una vez creado el script, procedo a editarlo. Le indico al script para que se ejecute:

- Crea una carpeta llamada `foo_1` y otórgale todos los permisos
- Dirígete a la misma
- Crea dos carpetas dentro llamadas `dummy_1` y `empty_1` y otórgale todos los permisos a ambas
- Dirígete a la carpeta `dummy_1`
- Crea dos archivos dentro de ésta, `file1.txt` y `file2.txt`
- Añadele esta cadena de texto al archivo `file1.txt` y luego muéstramela
- Copia el contenido de `file1.txt` a `file2.txt`
- Ve una carpeta atrás
- Mueve el archivo `file2.txt` ubicado en la carpeta `dummy_1` y lo mueves a la carpeta `empty_1`
- Posiciónate en `dummy_1`

- Ahora toma el archivo `file1.txt` como valor de la variable `file_name`
- Toma el primer parámetro a indicar como el valor de la variable `input_text`
- Pasa el parámetro indicado al archivo 
- **Condicional**: Si el parámetro es un **string** vacío, entonces muestra el texto `"Que me gusta bash!!!!"` y luego lo añades al archivo
- Muestra el texto indicado en el parámetro en la terminal

```
#!/bin/bash

#Script para recrear pasos anteriores y cambiar file1.txt

mkdir -m 777 'foo_1'
cd foo_1/
mkdir -m 777 'dummy_1' 'empty_1'
cd dummy_1/
touch file1.txt file2.txt

echo "Me encanta bash!!" >> file1.txt
cat file1.txt

cat file1.txt >> file2.txt
cd ..
mv dummy_1/file2.txt empty_1/
cd dummy_1

file_name=file1.txt
input_text=$1

echo $input_text > $file_name

if [[ -z $input_text  ]]; then
echo "Que me gusta bash!!!!"
echo "Que me gusta bash!!!!" > $file_name
fi

echo $input_text


exit 0
```

- Salgo del editor **nano** con: `CTRL+O`, `ENTER` y `CTRL+X`

Luego, para ejecutar el script:

- Limpio consola
- Le otorgo todos los permisos al script
- Ejecuto el script
- Me aparecerá un `bashbashbah` en la terminal y en el archivo `file1.txt`
- Y si no le indico nada, el texto `Que me gusta bash!!!!`

```
clear
chmod +x scriptEjer3.sh
./scriptEjer3.sh bashbashbah
```

**Sin parámetros**
```
./scriptEjer3.sh
```
<hr />

## Ejercicio 4 - Opcional
Se solicitó crear un **script** que descargue el contenido de una pagina web. Luego solicitar una palabra del texto y que busque en el contenido mostrando las líneas donde se encuentran.

- Le indicamos que descargue el contenido de la web con *wget*, el cual creará un arhivo y le decimos que los convierta a una extensión **html**
- Luego queremos que nos muestre un mensaje en la terminal para introducir una palabra, a la cual se le indica que el valor sea asignado a una variable
- Imprimimos la variable introducida
- Con el comando *grep* y sus parámetros le decimos que nos muestre las líneas donde se encuentran estas palabras, nos muestre la palabra únicamente y además de que las coloree para destacarlas 

```
#!/bin/bash
#Author: Miguel Briceno

# Script para descargar de un enlace un fichero
# buscar una palabra pasada por parametro
# e indique la linea de donde se encuentra esta

wget --convert-links --html-extension  https://es.wikipedia.org/wiki/DevOps

read -p "Indique una palabra: " input_word
echo $input_word

grep --color=always -n -o $input_word DevOps.html

exit 0
```
