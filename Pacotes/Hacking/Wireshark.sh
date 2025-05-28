#!/bin/bash

# Instalação do Wireshark em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando Wireshark..."
sudo apt install -y wireshark

echo "Adicionando seu usuário ao grupo wireshark (opcional, para capturar pacotes sem sudo)..."
sudo usermod -aG wireshark $USER

echo "Instalação do Wireshark concluída!"
echo "Reinicie a sessão para aplicar permissões do grupo wireshark."