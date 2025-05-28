#!/bin/bash

# Instalação do Google Chrome em distribuições baseadas em Debian/Ubuntu

echo "Baixando o pacote .deb do Google Chrome..."
wget -O /tmp/google-chrome.deb https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

echo "Instalando dependências necessárias..."
sudo apt update
sudo apt install -y wget gdebi-core

echo "Instalando o Google Chrome..."
sudo gdebi -n /tmp/google-chrome.deb

echo "Removendo arquivo temporário..."
rm /tmp/google-chrome.deb

echo "Instalação do Google Chrome concluída!"