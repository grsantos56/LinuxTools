#!/bin/bash

# Instalação do Visual Studio Code em distribuições baseadas em Debian/Ubuntu

echo "Adicionando chave GPG do VS Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > /tmp/packages.microsoft.gpg
sudo install -o root -g root -m 644 /tmp/packages.microsoft.gpg /usr/share/keyrings/

echo "Adicionando repositório do VS Code..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" | \
  sudo tee /etc/apt/sources.list.d/vscode.list

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando o Visual Studio Code..."
sudo apt install code -y

echo "Instalação do VS Code concluída!"