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

echo $input_text >> $file_name

if [[ -z $input_text  ]]; then
echo "Que me gusta bash!!!!"
echo "Que me gusta bash!!!!" >> $file_name
fi

echo $input_text


exit 0

