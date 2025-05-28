#!/bin/bash

# Instalação do Opera Browser em distribuições baseadas em Debian/Ubuntu

echo "Baixando o pacote .deb do Opera..."
wget -O /tmp/opera.deb https://download1.operacdn.com/pub/opera/desktop/108.0.5067.29/linux/opera-stable_108.0.5067.29_amd64.deb

echo "Instalando dependências necessárias..."
sudo apt update
sudo apt install -y wget gdebi-core

echo "Instalando o Opera..."
sudo gdebi -n /tmp/opera.deb

echo "Removendo arquivo temporário..."
rm /tmp/opera.deb

echo "Instalação do Opera concluída!"