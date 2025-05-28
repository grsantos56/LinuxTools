#!/bin/bash

# Verifica se o dialog está instalado
if ! command -v dialog &> /dev/null; then
    echo "dialog não encontrado. Instalando..."
    sudo apt update
    sudo apt install -y dialog
fi

# Função para exibir submenus de uma subcategoria
executar_submenu() {
    local titulo="$1"
    shift
    local opcoes=("$@")
    local escolha=$(dialog --separate-output --checklist "$titulo" 22 76 16 "${opcoes[@]}" 2>&1 >/dev/tty)
    clear
    for item in $escolha; do
        bash "$item"
    done
}

# Menu principal de seleção de categorias
cmd=(dialog --separate-output --checklist "Selecione as categorias para instalar:" 22 76 16)
options=(
    1 "Desenvolvimento" off
    2 "Design e Multimídia" off
    3 "Hacking" off
    4 "Internet" off
    5 "Jogos" off
    6 "Servidores e Containers" off
)
choices=$("${cmd[@]}" "${options[@]}" 2>&1 >/dev/tty)
clear

for choice in $choices; do
    case $choice in
        1)
            sub=$(dialog --menu "Escolha a subcategoria de Desenvolvimento:" 15 50 5 \
                1 "IDES" \
                2 "Linguagens de Programação" \
                3 "Banco de Dados" \
                2>&1 >/dev/tty)
            clear
            case $sub in
                1)
                    executar_submenu "Escolha os IDEs para instalar:" \
                        1 "VS Code" off \
                        2 "Eclipse" off \
                        3 "STS" off \
                        4 "JetBrains Toolbox" off \
                        1 "Pacotes/Desenvolvimento/IDES/Code.sh" \
                        2 "Pacotes/Desenvolvimento/IDES/eclipse.sh" \
                        3 "Pacotes/Desenvolvimento/IDES/STS.sh" \
                        4 "Pacotes/Desenvolvimento/IDES/jetbrains-toolbox.sh"
                    ;;
                2)
                    executar_submenu "Escolha as linguagens para instalar:" \
                        1 "Java" off \
                        2 "Node.js & npm" off \
                        3 "GCC/G++" off \
                        1 "Pacotes/Desenvolvimento/Linguagens/Java.sh" \
                        2 "Pacotes/Desenvolvimento/Linguagens/Node.sh" \
                        3 "Pacotes/Desenvolvimento/Linguagens/C,C++.sh"
                    ;;
                3)
                    executar_submenu "Escolha os bancos de dados:" \
                        1 "MySQL Server" off \
                        2 "MySQL Workbench" off \
                        3 "PostgreSQL" off \
                        4 "PgAdmin" off \
                        1 "Pacotes/Desenvolvimento/Bancos/mysql-server.sh" \
                        2 "Pacotes/Desenvolvimento/Bancos/mysql-workbench.sh" \
                        3 "Pacotes/Desenvolvimento/BancoDeDados/PostgreSQL.sh" \
                        4 "Pacotes/Desenvolvimento/BancoDeDados/PgAdmin.sh"
                    ;;
            esac
            ;;
        2)
            sub=$(dialog --menu "Escolha a subcategoria de Design e Multimídia:" 15 50 4 \
                1 "Áudio" \
                2 "Fotos" \
                3 "Vídeos e Transmissão" \
                2>&1 >/dev/tty)
            clear
            case $sub in
                1)
                    executar_submenu "Escolha programas de áudio:" \
                        1 "Audacity" off \
                        1 "Pacotes/Multimidia/audacity.sh"
                    ;;
                2)
                    executar_submenu "Escolha editores de imagem:" \
                        1 "GIMP" off \
                        1 "Pacotes/Multimidia/gimp.sh"
                    ;;
                3)
                    executar_submenu "Escolha os programas de vídeo e transmissão:" \
                        1 "VLC" off \
                        2 "OBS Studio" off \
                        3 "Shotcut" off \
                        1 "Pacotes/DesignEMultimidia/Audio/VLC.sh" \
                        2 "Pacotes/Multimidia/obs-studio.sh" \
                        3 "Pacotes/Multimidia/shotcut.sh"
                    ;;
            esac
            ;;
        3)
            executar_submenu "Escolha os programas de Hacking:" \
                1 "Nmap" off \
                2 "Wireshark" off \
                3 "SQLmap" off \
                4 "Hydra" off \
                5 "John the Ripper" off \
                6 "Metasploit" off \
                7 "ProtonVPN" off \
                1 "Pacotes/Hacking/Nmap.sh" \
                2 "Pacotes/Hacking/wireshark.sh" \
                3 "Pacotes/Hacking/sqlmap.sh" \
                4 "Pacotes/Hacking/hydra.sh" \
                5 "Pacotes/Hacking/john.sh" \
                6 "Pacotes/Hacking/metasploit-framework.sh" \
                7 "Pacotes/Hacking/protonvpn.sh"
            ;;
        4)
            sub=$(dialog --menu "Escolha a subcategoria de Internet:" 15 50 3 \
                1 "Navegadores" \
                2 "Redes Sociais" \
                2>&1 >/dev/tty)
            clear
            case $sub in
                1)
                    executar_submenu "Escolha os navegadores:" \
                        1 "Google Chrome" off \
                        2 "Brave" off \
                        3 "Opera" off \
                        1 "Pacotes/Internet/Navegadores/chrome.sh" \
                        2 "Pacotes/Internet/Navegadores/Brave.sh" \
                        3 "Pacotes/Internet/Navegadores/opera.sh"
                    ;;
                2)
                    executar_submenu "Escolha os apps sociais:" \
                        1 "Telegram" off \
                        2 "Discord" off \
                        1 "Pacotes/Internet/RedesSociais/Telegram.sh" \
                        2 "Pacotes/Internet/RedesSociais/Discord.sh"
                    ;;
            esac
            ;;
        5)
            executar_submenu "Escolha os programas de Jogos:" \
                1 "Steam" off \
                2 "Epic Games (Heroic)" off \
                3 "EA Sports (Lutris)" off \
                1 "Pacotes/Jogos/steam.sh" \
                2 "Pacotes/Jogos/epic.sh" \
                3 "Pacotes/Jogos/ea-sports.sh"
            ;;
        6)
            executar_submenu "Escolha os programas de Servidores e Containers:" \
                1 "XAMPP" off \
                2 "Docker" off \
                3 "VirtualBox" off \
                1 "Pacotes/ServidoresEContainers/Xampp.sh" \
                2 "Pacotes/ServidoresEContainers/docker.sh" \
                3 "Pacotes/ServidoresEContainers/VirtualBox.sh"
            ;;
    esac
done

echo "Instalação finalizada!"


#clear
#for choice in $choices
#do
#    case $choice in
#        1)
#            bash "cd /home/gabriel/Área de trabalho/shell script/Pacotes/Desenvolvimento && bash #Dev.sh"
#            ;;
#        2)
#            bash "/home/gabriel/Área de trabalho/shell script/Pacotes/DesignEMultimidia/Design.sh"
#            ;;
#        3)
#            bash "/home/gabriel/Área de trabalho/shell script/Pacotes/Hacking/Hacking.sh"
#            ;;
#        4)
#            bash "/home/gabriel/Área de trabalho/shell script/Pacotes/Internet/Internet.sh"
#            ;;
#        5)
#            bash "/home/gabriel/Área de trabalho/shell script/Pacotes/Jogos/Jogos.sh"
#            ;;
#        6)
 #           bash "/home/gabriel/Área de trabalho/shell script/Pacotes/ServidoresEContainers/ServidoresEContainers.sh"
 #           ;;
#    esac
#done