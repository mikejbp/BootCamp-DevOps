
#!/bin/bash
#Author: Miguel Briceno

# Script para descargar de un enlace un fichero
# buscar una palabra pasada por parametro
# e indique la linea de donde se encuentra esta

wget https://es.wikipedia.org/wiki/DevOps

read -p "Indique una palabra: " input_word
echo $input_word

grep --color=always -n -o $input_word DevOps

exit 0

