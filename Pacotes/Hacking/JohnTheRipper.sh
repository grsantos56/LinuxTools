#!/bin/bash

# Instalação do John the Ripper em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando John the Ripper..."
sudo apt install -y john

echo "Instalação do John the Ripper concluída!"