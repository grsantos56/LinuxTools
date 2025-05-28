#!/bin/bash

# Instalação do Docker e Docker Compose em distribuições baseadas em Debian/Ubuntu

echo "Atualizando lista de pacotes..."
sudo apt update

echo "Instalando dependências necessárias..."
sudo apt install -y apt-transport-https ca-certificates curl software-properties-common

echo "Adicionando chave GPG oficial do Docker..."
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

echo "Adicionando repositório do Docker..."
echo "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

echo "Atualizando lista de pacotes novamente..."
sudo apt update

echo "Instalando Docker e Docker Compose..."
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

echo "Adicionando usuário ao grupo docker (opcional)..."
sudo usermod -aG docker $USER

echo "Verificando instalação do Docker..."
docker --version

echo "Verificando instalação do Docker Compose..."
docker compose version

echo "Instalação do Docker e Docker Compose concluída!"
echo "Reinicie a sessão para usar o Docker sem sudo."

# Nota: Após a instalação, é recomendado reiniciar a sessão do usuário para que as alterações de grupo tenham efeito.
echo "Para testar o Docker, execute: docker run hello-world"
# Nota: O comando acima executa um contêiner de teste que verifica se o Docker está funcionando corretamente.