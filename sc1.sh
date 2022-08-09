#!/bin/bash

echo "criação de diretórios..."

mkdir /public
mkdir /emp
mkdir /hlp

echo "criação dos grupos de usuários..."

groupadd EMP
groupadd HLP

echo "criação dos usuários..."

useradd renan -m -s /bin/bash -p $(openssl passwd -crypt TesteTeste01) -G EMP
useradd flavia -m -s /bin/bash -p $(openssl passwd -crypt TesteTeste01) -G EMP

useradd jose -m -s /bin/bash -p $(openssl passwd -crypt TesteTeste01) -G HLP
useradd alexandre -m -s /bin/bash -p $(openssl passwd -crypt TesteTeste01) -G HLP

echo "especificando as permissões dos diretórios...."

chown root:EMP /emp
chown root:HLP /hlp

chmod 777 /public
chmod 770 /emp
chmod 770 /hlp

echo "Feito!"
