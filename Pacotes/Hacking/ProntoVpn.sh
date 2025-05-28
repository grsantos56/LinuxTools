#!/bin/bash

# Instalação do Proton VPN CLI em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando dependências necessárias..."
sudo apt install -y wget apt-transport-https

echo "Adicionando repositório do Proton VPN..."
wget -q -O - https://repo.protonvpn.com/debian/public_key.asc | sudo apt-key add -
echo 'deb https://repo.protonvpn.com/debian stable main' | sudo tee /etc/apt/sources.list.d/protonvpn.list

echo "Atualizando lista de pacotes novamente..."
sudo apt update

echo "Instalando Proton VPN CLI..."
sudo apt install -y protonvpn

echo "Instalação do Proton VPN concluída!"