#!/bin/bash

echo "atualização do servidor..."
apt-get update
apt-get upgrade -y

#instalação apache e unzip
apt-get install apache2 -y
apt-get install unzip -y


echo "baixando e copiando os arquivos da aplicação..."

cd /tmp
wget *link_do(s)_arquivo(s)_:p
unzip *nome_do_arquivo
cd nome_do_diretorio
cp -R * /var/www/html/


