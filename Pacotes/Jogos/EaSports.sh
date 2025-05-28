#!/bin/bash

# Instalação da EA App (EA Sports) via Lutris em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Lutris (necessário para rodar EA App)..."
sudo apt install -y lutris

echo "Instalação do Lutris concluída!"
echo "Para instalar a EA App, abra o Lutris e procure por 'EA App' para instalar e gerenciar seus jogos."

