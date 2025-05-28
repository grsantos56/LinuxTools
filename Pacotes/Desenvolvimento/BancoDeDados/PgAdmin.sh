#!/bin/bash

# Instalação do pgAdmin 4 em distribuições baseadas em Debian/Ubuntu

echo "Instalando dependências necessárias..."
sudo apt install -y curl ca-certificates gnupg

echo "Adicionando repositório do pgAdmin..."
curl -fsSLo /usr/share/keyrings/pgadmin-keyring.gpg https://www.pgadmin.org/static/packages_pgadmin_org.pub
echo "deb [signed-by=/usr/share/keyrings/pgadmin-keyring.gpg] https://ftp.postgresql.org/pub/pgadmin/pgadmin4/apt/jammy pgadmin4 main" | \
  sudo tee /etc/apt/sources.list.d/pgadmin4.list

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando o pgAdmin 4 (desktop e web)..."
sudo apt install -y pgadmin4-desktop pgadmin4-web

echo "Instalação do pgAdmin concluída!"