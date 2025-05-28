#!/bin/bash

# Instalação do Node.js (última LTS) e npm em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando dependências necessárias..."
sudo apt install -y curl

echo "Adicionando repositório do NodeSource (Node.js LTS)..."
curl -fsSL https://deb.nodesource.com/setup_lts.x | sudo -E bash -

echo "Instalando Node.js e npm..."
sudo apt install -y nodejs

echo "Verificando a instalação do Node.js..."
node -v

echo "Verificando a instalação do npm..."
npm -v

echo "Instalação do Node.js e npm concluída!"