#!/bin/bash

# Instalação do Nmap em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Nmap..."
sudo apt install -y nmap

echo "Instalação do Nmap concluída!"
