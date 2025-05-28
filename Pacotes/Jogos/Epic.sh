#!/bin/bash

# Instalação da Epic Games (via Heroic Games Launcher) em Debian/Ubuntu

echo "Baixando o Heroic Games Launcher (.deb)..."
wget -O /tmp/heroic.deb https://github.com/Heroic-Games-Launcher/HeroicGamesLauncher/releases/latest/download/heroic_amd64.deb

echo "Instalando dependências necessárias..."
sudo apt update
sudo apt install -y wget gdebi-core

echo "Instalando Heroic Games Launcher..."
sudo gdebi -n /tmp/heroic.deb

echo "Removendo arquivo temporário..."
rm /tmp/heroic.deb

echo "Instalação do Heroic Games Launcher (Epic Games) concluída!"

# Instruções adicionais:
echo "Para iniciar o Heroic Games Launcher, você pode encontrá-lo no menu de aplicativos ou executando 'heroic' no terminal."
echo "Após a instalação, você pode precisar configurar sua conta da Epic Games dentro do Heroic Games Launcher."
echo "Certifique-se de que você tenha uma conta da Epic Games para acessar seus jogos."
echo "Divirta-se jogando seus jogos da Epic Games!"
# Nota: O Heroic Games Launcher é um cliente de terceiros que permite acessar jogos da Epic Games no Linux.