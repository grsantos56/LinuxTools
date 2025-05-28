#!/bin/bash

# Instalação do PostgreSQL em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando o PostgreSQL..."
sudo apt install -y postgresql postgresql-contrib

echo "Verificando status do PostgreSQL..."
sudo systemctl status postgresql --no-pager

echo "Instalação do PostgreSQL concluída!"