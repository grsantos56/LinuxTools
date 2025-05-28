#!/bin/bash

# Instalação do Metasploit Framework em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Metasploit Framework..."
sudo apt install -y metasploit-framework

echo "Instalação do Metasploit Framework concluída!"