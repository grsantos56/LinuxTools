#!/bin/bash

# Instalação do JetBrains Toolbox em distribuições baseadas em Debian/Ubuntu

echo "Baixando o JetBrains Toolbox..."
wget -O /tmp/jetbrains-toolbox.tar.gz "https://download.jetbrains.com/toolbox/jetbrains-toolbox-2.3.1.31116.tar.gz"

echo "Extraindo o JetBrains Toolbox..."
tar -xzf /tmp/jetbrains-toolbox.tar.gz -C /tmp

echo "Localizando pasta extraída..."
TOOLBOX_DIR=$(find /tmp -maxdepth 1 -type d -name "jetbrains-toolbox-*")

echo "Movendo JetBrains Toolbox para /opt..."
sudo mv "$TOOLBOX_DIR" /opt/jetbrains-toolbox

echo "Criando atalho para o JetBrains Toolbox..."
sudo ln -sf /opt/jetbrains-toolbox/jetbrains-toolbox /usr/local/bin/jetbrains-toolbox

echo "Removendo arquivo temporário..."
rm /tmp/jetbrains-toolbox.tar.gz

echo "Instalação do JetBrains Toolbox concluída!"
echo "Para iniciar, execute: jetbrains-toolbox &"