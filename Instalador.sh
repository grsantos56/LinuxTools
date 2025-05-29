#!/bin/bash

# Loop principal do menu
while true; do
  # Tela principal com opções de categorias
  opcao=$(dialog --clear --stdout --title "Linux Tools" \
    --menu "Escolha uma categoria:" 0 0 0 \
    1 "Desenvolvimento" \
    2 "Design e Multimidia" \
    3 "Hacking" \
    4 "Internet" \
    5 "Jogos" \
    6 "Servidores e Containers" \
    0 "Sair")

  clear

  case "$opcao" in
    1)
      # Submenu de Desenvolvimento
      while true; do
        sub_opcao=$(dialog --clear --stdout --title "Desenvolvimento" \
          --menu "Escolha uma subcategoria:" 0 0 0 \
          1 "Banco de Dados" \
          2 "IDES" \
          3 "Linguagens" \
          0 "Voltar")

        clear
        case "$sub_opcao" in
          1)
            banco=$(dialog --clear --stdout --title "Banco de Dados" \
              --menu "Escolha uma opção para instalar:" 0 0 0 \
              1 "Mysql-Server" \
              2 "Mysql Workbench" \
              3 "PostgreSQL" \
              4 "PgAdmin" \
              0 "Voltar")
            clear
            case "$banco" in
              1) bash "Pacotes/Desenvolvimento/BancoDeDados/Mysql-Server.sh" ;;
              2) bash "Pacotes/Desenvolvimento/BancoDeDados/Mysql-Workbench.sh" ;;
              3) bash "Pacotes/Desenvolvimento/BancoDeDados/Postgre.sh" ;;
              4) bash "Pacotes/Desenvolvimento/BancoDeDados/PgAdmin.sh" ;;
              0) continue ;;
            esac
            ;;
          2)
            ide=$(dialog --clear --stdout --title "IDES" \
              --menu "Escolha uma IDE para instalar:" 0 0 0 \
              1 "Visual Studio Code" \
              2 "Eclipse" \
              3 "JetBrains Toolbox" \
              4 "Spring Tool Suite (STS)" \
              0 "Voltar")
            clear
            case "$ide" in
              1) bash "Pacotes/Desenvolvimento/IDES/Code.sh" ;;
              2) bash "Pacotes/Desenvolvimento/IDES/Eclipse.sh" ;;
              3) bash "Pacotes/Desenvolvimento/IDES/JetBrains.sh" ;;
              4) bash "Pacotes/Desenvolvimento/IDES/STS.sh" ;;
              0) continue ;;
            esac
            ;;
          3)
            linguagem=$(dialog --clear --stdout --title "Linguagens de Programação" \
              --menu "Escolha uma linguagem para instalar:" 0 0 0 \
              1 "C/C++" \
              2 "Java" \
              3 "Node.js" \
              0 "Voltar")
            clear
            case "$linguagem" in
              1) bash "Pacotes/Desenvolvimento/Linguagens/C,C++.sh" ;;
              2) bash "Pacotes/Desenvolvimento/Linguagens/Java.sh" ;;
              3) bash "Pacotes/Desenvolvimento/Linguagens/Node.sh" ;;
              0) continue ;;
            esac
            ;;
          0) break ;; # Voltar ao menu principal
        esac
      done
      ;;

    2)
      # Submenu Design e Multimídia
      while true; do
        sub_opcao=$(dialog --clear --stdout --title "Design e Multimidia" \
          --menu "Escolha uma subcategoria:" 0 0 0 \
          1 "Audio" \
          2 "Foto" \
          3 "Video" \
          0 "Voltar")
        clear
        case "$sub_opcao" in
          1)
            audio=$(dialog --clear --stdout --title "Audio" \
              --menu "Escolha uma opção para instalar:" 0 0 0 \
              1 "Audacity" \
              2 "VLC" \
              0 "Voltar")
            clear
            case "$audio" in
              1) bash "Pacotes/DesignEMultimidia/Audio/Audacity.sh" ;;
              2) bash "Pacotes/DesignEMultimidia/Audio/VLC.sh" ;;
              0) continue ;;
            esac
            ;;
          2)
            foto=$(dialog --clear --stdout --title "Foto" \
              --menu "Escolha um editor de fotos para instalar:" 0 0 0 \
              1 "GIMP" \
              0 "Voltar")
            clear
            case "$foto" in
              1) bash "Pacotes/DesignEMultimidia/Foto/Gimp.sh" ;;
              0) continue ;;
            esac
            ;;
          3)
            video=$(dialog --clear --stdout --title "Vídeo e Transmissão" \
              --menu "Escolha uma opção para instalar:" 0 0 0 \
              1 "OBS" \
              2 "ShotCut" \
              0 "Voltar")
            clear
            case "$video" in
              1) bash "Pacotes/DesignEMultimidia/VideoETrasmissao/OBS.sh" ;;
              2) bash "Pacotes/DesignEMultimidia/VideoETrasmissao/Shotcut.sh" ;;
              0) continue ;;
            esac
            ;;
          0) break ;;
        esac
      done
      ;;

    3)
      hacking=$(dialog --clear --stdout --title "Hacking" \
        --menu "Escolha uma ferramenta para instalar:" 0 0 0 \
        1 "Hydra" \
        2 "John The Ripper" \
        3 "Metasploit" \
        4 "Nmap" \
        5 "SQLMap" \
        6 "Wireshark" \
        7 "ProtonVPN" \
        0 "Voltar")
      clear
      case "$hacking" in
        1) bash "Pacotes/Hacking/Hydra.sh" ;;
        2) bash "Pacotes/Hacking/JohnTheRipper.sh" ;;
        3) bash "Pacotes/Hacking/Metasploit.sh" ;;
        4) bash "Pacotes/Hacking/Nmap.sh" ;;
        5) bash "Pacotes/Hacking/SQLMap.sh" ;;
        6) bash "Pacotes/Hacking/Wireshark.sh" ;;
        7) bash "Pacotes/Hacking/ProtonVPN.sh" ;;
        0) continue ;;
      esac
      ;;

    4)
      while true; do
        sub_opcao=$(dialog --clear --stdout --title "Internet" \
          --menu "Escolha uma subcategoria:" 0 0 0 \
          1 "Navegadores" \
          2 "Redes Sociais" \
          0 "Voltar")
        clear
        case "$sub_opcao" in
          1)
            navegadores=$(dialog --clear --stdout --title "Navegadores" \
              --menu "Escolha uma opção para instalar:" 0 0 0 \
              1 "Brave" \
              2 "Chrome" \
              3 "Opera" \
              0 "Voltar")
            clear
            case "$navegadores" in
              1) bash "Pacotes/Internet/Navegadores/Brave.sh" ;;
              2) bash "Pacotes/Internet/Navegadores/Chrome.sh" ;;
              3) bash "Pacotes/Internet/Navegadores/Opera.sh" ;;
              0) continue ;;
            esac
            ;;
          2)
            redes=$(dialog --clear --stdout --title "Redes Sociais" \
              --menu "Escolha uma opção para instalar:" 0 0 0 \
              1 "Discord" \
              2 "Telegram" \
              0 "Voltar")
            clear
            case "$redes" in
              1) bash "Pacotes/Internet/RedesSociais/Discord.sh" ;;
              2) bash "Pacotes/Internet/RedesSociais/Telegram.sh" ;;
              0) continue ;;
            esac
            ;;
          0) break ;;
        esac
      done
      ;;

    5)
      jogos=$(dialog --clear --stdout --title "Jogos" \
        --menu "Escolha uma subcategoria:" 0 0 0 \
        1 "EA Sports" \
        2 "Epic" \
        3 "Steam" \
        0 "Voltar")
      clear
      case "$jogos" in
        1) bash "Pacotes/Jogos/EaSports.sh" ;;
        2) bash "Pacotes/Jogos/Epic.sh" ;;
        3) bash "Pacotes/Jogos/Steam.sh" ;;
        0) continue ;;
      esac
      ;;

    6)
      servidor=$(dialog --clear --stdout --title "Servidores e Containers" \
        --menu "Escolha uma subcategoria:" 0 0 0 \
        1 "Docker" \
        2 "Virtual Box" \
        3 "Xampp" \
        0 "Voltar")
      clear
      case "$servidor" in
        1) bash "Pacotes/ServidoresEContainers/docker.sh" ;;
        2) bash "Pacotes/ServidoresEContainers/VirtualBox.sh" ;;
        3) bash "Pacotes/ServidoresEContainers/Xampp.sh" ;;
        0) continue ;;
      esac
      ;;

    0)
      # Sai do loop principal e encerra o programa
      break
      ;;
  esac

done

# Mensagem de conclusão final
clear
dialog --clear --msgbox "Instalação concluída!" 0 0