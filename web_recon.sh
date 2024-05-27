#!/bin/bash


echo "SCRIPT PARA WEB RECON"

echo "digite a url desejada"

read url


for diretorio in $(cat web_lista.txt)
do
requisicao=$(curl -s -o /dev/null -w "%{http_code}" $url/$diretorio/)

if [ $requisicao == "200" ]
then
        echo "Diretório $diretorio encontrado"

fi
done
