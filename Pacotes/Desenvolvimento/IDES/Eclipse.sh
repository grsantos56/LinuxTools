#!/bin/bash

# Instalação do Eclipse IDE em distribuições baseadas em Debian/Ubuntu

echo "Baixando instalador do Eclipse..."
wget -O /tmp/eclipse-installer.tar.gz https://ftp.osuosl.org/pub/eclipse/oomph/epp/2024-03/R/eclipse-inst-jre-linux64.tar.gz

echo "Extraindo instalador..."
tar -xzf /tmp/eclipse-installer.tar.gz -C /tmp

echo "Executando instalador do Eclipse..."
/tmp/eclipse-installer/eclipse-inst

echo "Removendo arquivos temporários..."
rm -rf /tmp/eclipse-installer /tmp/eclipse-installer.tar.gz

echo "Instalação do Eclipse finalizada! Siga as instruções do instalador gráfico."

# Nota: O instalador do Eclipse é gráfico e requer interação do usuário.
# Você pode escolher a versão do Eclipse e os plugins desejados durante a instalação.
# Certifique-se de ter o Java instalado antes de executar o instalador.