# 🧰 LinuxTools

**LinuxTools** é um instalador interativo de softwares para sistemas baseados em Debian (como Ubuntu e derivados). Com uma interface simples utilizando `dialog`, ele permite que você escolha entre diversas categorias e subcategorias de programas, automatizando a instalação de ferramentas essenciais para desenvolvedores, designers, gamers, hackers e administradores de sistemas.

---

## 🖥️ Compatibilidade

> ✅ Este script foi desenvolvido **exclusivamente** para distribuições **baseadas em Debian**, como:

- Ubuntu
- Linux Mint
- Pop!_OS
- Zorin OS
- Debian

⚠️ O uso em distribuições não baseadas em Debian pode causar falhas na instalação dos pacotes.

---

## 📂 Categorias e Aplicativos Disponíveis

### 1. Desenvolvimento
- **Banco de Dados**: MySQL Server, MySQL Workbench, PostgreSQL, PgAdmin  
- **IDEs**: Visual Studio Code, Eclipse, JetBrains Toolbox, Spring Tool Suite (STS)  
- **Linguagens de Programação**: C/C++, Java, Node.js

### 2. Design e Multimídia
- **Áudio**: Audacity, VLC  
- **Foto**: GIMP  
- **Vídeo e Transmissão**: OBS Studio, Shotcut  

### 3. Hacking
- Hydra  
- John The Ripper  
- Metasploit  
- Nmap  
- SQLMap  
- Wireshark  
- ProtonVPN  

### 4. Internet
- **Navegadores**: Brave, Google Chrome, Opera  
- **Redes Sociais**: Discord, Telegram  

### 5. Jogos
- EA Sports Launcher  
- Epic Games Launcher  
- Steam  

### 6. Servidores e Containers
- Docker  
- VirtualBox  
- XAMPP  

---

## ▶️ Como Executar

### ✅ Pré-requisitos:
Tenha o `dialog` instalado:
```bash
sudo apt update && sudo apt install dialog -y
```

## 🔧 Passos para execução

### 1. Clone o repositório:
```bash
git clone https://github.com/grsantos56/LinuxTools.git
cd LinuxTools
chmod +x Instalador.sh
./Instalador.sh
```

## 📌 Observações
- Todos os scripts de instalação estão organizados em subpastas por categoria.

- Ideal para uso em pós-instalação de sistema ou para configurar rapidamente seu ambiente de trabalho.

- Sinta-se à vontade para contribuir com novos scripts ou melhorias!
