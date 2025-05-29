#!/bin/bash

# Tela principal
opcao=$(dialog --clear --stdout --title "Linux Tools" \
  --menu "Escolha uma categoria:" 0 0 0 \
  1 "Desenvolvimento" \
  2 "Design e Multimidia" \
  3 "Hacking" \
  4 "Internet" \
  5 "Jogos" \
  6 "Servidores e Containers")

clear

if [[ "$opcao" == "1" ]]; then
  sub_opcao=$(dialog --clear --stdout --title "Desenvolvimento" \
    --menu "Escolha uma subcategoria:" 0 0 0 \
    1 "Banco de Dados" \
    2 "IDES" \
    3 "Linguagens")

  clear

  if [[ "$sub_opcao" == "1" ]]; then
    banco=$(dialog --clear --stdout --title "Banco de Dados" \
      --menu "Escolha uma opção para instalar:" 0 0 0 \
      1 "Mysql-Server" \
      2 "Mysql Workbench" \
      3 "PostgreSQL" \
      4 "PgAdmin")

    clear
    case "$banco" in
      1) bash Mysql-Server.sh ;;
      2) bash Mysql-Workbench.sh ;;
      3) bash Postgre.sh ;;
      4) bash PgAdmin.sh ;;
    esac

  elif [[ "$sub_opcao" == "2" ]]; then
    ide=$(dialog --clear --stdout --title "IDES" \
      --menu "Escolha uma IDE para instalar:" 0 0 0 \
      1 "Visual Studio Code" \
      2 "Eclipse" \
      3 "JetBrains Toolbox" \
      4 "Spring Tool Suite (STS)")

    clear
    case "$ide" in
      1) bash Code.sh ;;
      2) bash Eclipse.sh ;;
      3) bash JetBrains.sh ;;
      4) bash STS.sh ;;
    esac

  elif [[ "$sub_opcao" == "3" ]]; then
    linguagem=$(dialog --clear --stdout --title "Linguagens de Programação" \
      --menu "Escolha uma linguagem para instalar:" 0 0 0 \
      1 "C/C++" \
      2 "Java" \
      3 "Node.js")

    clear
    case "$linguagem" in
      1) bash "C,C++.sh" ;;
      2) bash Java.sh ;;
      3) bash Node.sh ;;
    esac
  fi
fi

clear

if [[ "$opcao" == "2" ]]; then
  sub_opcao=$(dialog --clear --stdout --title "Design e Multimídia" \
    --menu "Escolha uma subcategoria:" 0 0 0 \
    1 "Audio" \
    2 "Foto" \
    3 "Video")

  clear

  if [[ "$sub_opcao" == "1" ]]; then
    audio=$(dialog --clear --stdout --title "Audio" \
      --menu "Escolha uma opção para instalar:" 0 0 0 \
      1 "Audacity" \
      2 "VLC")

    clear
    case "$audio" in
      1) bash Audacity.sh ;;
      2) bash VLC.sh ;;
    esac

  elif [[ "$sub_opcao" == "2" ]]; then
    foto=$(dialog --clear --stdout --title "Foto" \
      --menu "Escolha um editor de fotos para instalar:" 0 0 0 \
      1 "GIMP")

    clear
    case "$foto" in
      1) bash Gimp.sh ;;
    esac

  elif [[ "$sub_opcao" == "3" ]]; then
    video=$(dialog --clear --stdout --title "Vídeo e Transmissão" \
      --menu "Escolha uma opção para instalar:" 0 0 0 \
      1 "OBS" \
      2 "ShotCut")

    clear
    case "$video" in
      1) bash "OBS.sh" ;;
      2) bash "Shotcut.sh" ;;
    esac
  fi
fi

clear

if [[ "$opcao" == "3" ]]; then
    hacking=$(dialog --clear --stdout --title "Hacking" \
    --menu "Escolha uma subcategoria:" 0 0 0 \
    1 "Hydra" \
    2 "John The Ripper" \
    3 "Metaspolit" \
    4 "Nmap" \
    5 "SQLMap" \
    6 "Wireshark"\
    7 "ProtonVPN")

    clear

    case "$hacking" in
        1) bash Hydra.sh ;;
        2) bash JohnTheRipper.sh ;;
        3) bash Metasploit.sh ;;
        4) bash Nmap.sh ;;
        5) bash SQLMap.sh ;;
        6) bash Wireshark.sh ;;
        7) bash ProtonVPN.sh ;;
    esac
fi

clear
