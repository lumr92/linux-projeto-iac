#!/bin/bash

echo "Verificando se existem aplicações aguardando atualizaçao..."

apt-get update

echo "Atualizando os aplicativos do sistema..."

apt-get upgrade -y

echo "Instalando servidor web Apache..."

apt-get install apache2 -y

echo "Instalando Unzip..."

apt-get install unzip -y

echo "Baixando e descompactando a aplicação no diretório /tmp..."

cd tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip

echo "Copiando os arquivos da aplicação para o diretório padrão do Apache..."

cd linux-site-dio-main/
cp -R * /var/www/html/

echo "Script finalizado!"
