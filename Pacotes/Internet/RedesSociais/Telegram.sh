#!/bin/bash

# Instalação do Telegram Desktop em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Telegram Desktop..."
sudo apt install -y telegram-desktop

echo "Instalação do Telegram concluída!"