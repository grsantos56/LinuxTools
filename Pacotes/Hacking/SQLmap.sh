#!/bin/bash

# Instalação do sqlmap em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando sqlmap..."
sudo apt install -y sqlmap

echo "Instalação do sqlmap concluída!"