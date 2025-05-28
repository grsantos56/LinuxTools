#!/bin/bash

# Instalação do navegador Brave em distribuições baseadas em Debian/Ubuntu

echo "Adicionando chave GPG do Brave..."
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

echo "Adicionando repositório do Brave..."
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main" | \
  sudo tee /etc/apt/sources.list.d/brave-browser-release.list

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Brave Browser..."
sudo apt install brave-browser -y

echo "Instalação do Brave concluída!"