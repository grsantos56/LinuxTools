#!/bin/bash

# Instalação do MySQL Server em distribuições baseadas em Debian/Ubuntu

read -p "Digite o nome do usuário root do MySQL (padrão: root): " MYSQL_USER
MYSQL_USER=${MYSQL_USER:-root}

read -s -p "Digite a senha para o usuário $MYSQL_USER: " MYSQL_PASS
echo

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando o MySQL Server..."
sudo apt install -y mysql-server

echo "Configurando senha do usuário $MYSQL_USER..."
sudo mysql -e "ALTER USER '$MYSQL_USER'@'localhost' IDENTIFIED WITH mysql_native_password BY '$MYSQL_PASS'; FLUSH PRIVILEGES;"

echo "Verificando status do MySQL..."
sudo systemctl status mysql --no-pager

echo "Instalação e configuração do MySQL Server concluída!"