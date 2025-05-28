#!/bin/bash

# Instalação do XAMPP em distribuições baseadas em Debian/Ubuntu

echo "Baixando o instalador do XAMPP..."
wget -O /tmp/xampp-installer.run https://www.apachefriends.org/xampp-files/8.2.12/xampp-linux-x64-8.2.12-0-installer.run

echo "Tornando o instalador executável..."
chmod +x /tmp/xampp-installer.run

echo "Executando o instalador do XAMPP (será aberta uma interface gráfica)..."
sudo /tmp/xampp-installer.run

echo "Removendo instalador temporário..."
rm /tmp/xampp-installer.run

echo "Instalação do XAMPP concluída!"

echo "Para iniciar o XAMPP, execute: sudo /opt/lampp/lampp start"
echo "Para acessar o painel de controle do XAMPP, abra seu navegador e vá para: http://localhost"
echo "Para parar o XAMPP, execute: sudo /opt/lampp/lampp stop"

