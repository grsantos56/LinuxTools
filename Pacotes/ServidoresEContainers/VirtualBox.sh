#!/bin/bash

# Instalação do VirtualBox em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando dependências necessárias..."
sudo apt install -y wget gnupg

echo "Adicionando chave GPG do VirtualBox..."
wget -q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo gpg --dearmor -o /usr/share/keyrings/virtualbox-archive-keyring.gpg

echo "Adicionando repositório do VirtualBox..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/virtualbox-archive-keyring.gpg] https://download.virtualbox.org/virtualbox/debian $(lsb_release -cs) contrib" | \
  sudo tee /etc/apt/sources.list.d/virtualbox.list

echo "Atualizando lista de pacotes novamente..."
sudo apt update

echo "Instalando VirtualBox..."
sudo apt install -y virtualbox-7.0

echo "Instalação do VirtualBox concluída!"