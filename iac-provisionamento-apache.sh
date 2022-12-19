#!bin/bash

echo "Atualizando o servidor..."
apt update && apt upgrade
apt install -y apache2 wget unzip
echo "Baixando o site..."
wget https://github.com/denilsonbonatti/linux-site-dio/refs/heads/main.zip -P /tmp
unzip /tmp/main.zip 
cd linux-site-dio
cp -R * /var/www/html/ 
echo "Tudo pronto"