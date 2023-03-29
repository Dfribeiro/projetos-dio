#!/bin/bash


echo "Criando Diretorios ..."

mkdir /publico
mkdir /adm
mkdir /ven
mkdir /sec

echo "Criando grupos ... "

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "criando usuarios ..."

useradd carlos -c "carlos ribeiro " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd maria  -c "maria silva ribeiro " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd joao -c "joao teixeira " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_ADM

useradd debora  -c "debora santos " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN 

useradd sebastiana -c "sebastiana santos " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd roberto -c "roberto souza " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_VEN

useradd josefina -c "josefina amaral " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

useradd amanda -c "amanda ribeiro " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

useradd rogeio -c "rogerio carvalho " -m -s /bin/bash -p $(openssl passwd 123) -G GRP_SEC

echo"permissoes dos diretorios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec


echo "fim ..."
