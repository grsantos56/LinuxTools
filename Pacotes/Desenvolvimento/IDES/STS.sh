#!/bin/bash

# Instalação do Spring Tool Suite (STS) em distribuições baseadas em Debian/Ubuntu

echo "Baixando o Spring Tool Suite (STS)..."
wget -O /tmp/sts.tar.gz https://download.springsource.com/release/STS4/4.23.1.RELEASE/dist/e4.29/spring-tool-suite-4-4.23.1.RELEASE-e4.29.0-linux.gtk.x86_64.tar.gz

echo "Extraindo o STS para /opt..."
sudo tar -xzf /tmp/sts.tar.gz -C /opt

echo "Removendo arquivo temporário..."
rm /tmp/sts.tar.gz

echo "Criação de atalho para o STS..."
sudo ln -sf /opt/sts-4.23.1.RELEASE/SpringToolSuite4 /usr/local/bin/sts

echo "Instalação do Spring Tool Suite concluída!"
echo "Para iniciar, execute: sts &"

# Nota: Certifique-se de ter o Java instalado antes de executar o STS.