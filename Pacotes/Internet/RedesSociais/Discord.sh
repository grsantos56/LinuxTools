#!/bin/bash

# Instalação do Discord em distribuições baseadas em Debian/Ubuntu

echo "Baixando o pacote .deb do Discord..."
wget -O /tmp/discord.deb "https://discord.com/api/download?platform=linux&format=deb"

echo "Instalando dependências necessárias..."
sudo apt update
sudo apt install -y wget gdebi-core

echo "Instalando o Discord..."
sudo gdebi -n /tmp/discord.deb

echo "Removendo arquivo temporário..."
rm /tmp/discord.deb

echo "Instalação do Discord concluída!"