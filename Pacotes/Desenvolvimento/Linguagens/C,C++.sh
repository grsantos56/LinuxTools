#!/bin/bash

# Instalação do GCC e G++ em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando GCC e G++..."
sudo apt install -y build-essential

echo "Verificando a instalação do GCC..."
gcc --version

echo "Verificando a instalação do G++..."
g++ --version

echo "Instalação do GCC e G++ concluída!"