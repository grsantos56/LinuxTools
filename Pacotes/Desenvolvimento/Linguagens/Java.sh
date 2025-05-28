#!/bin/bash

# Instalação do OpenJDK (Java) na última versão LTS em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando o OpenJDK 21 (Java LTS)..."
sudo apt install -y openjdk-21-jdk

echo "Verificando a instalação do Java..."
java -version

echo "Instalação do Java (OpenJDK 21) concluída!"