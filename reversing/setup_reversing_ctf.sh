#!/bin/bash
# Script de instalación para herramientas de Reverse Engineering en CTFs

echo "🔧 Actualizando el sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando herramientas básicas..."
sudo apt install -y git curl wget unzip build-essential python3 python3-pip vim nano

echo "🔍 Instalando herramientas esenciales de reversing..."
sudo apt install -y gdb strace ltrace radare2 binwalk hexedit file elfutils checksec xxd

echo "🧠 Instalando editores y desensambladores..."
sudo apt install -y cutter

# Instalar Ghidra (si no está en los repos, usar descarga manual)
if ! command -v ghidra &> /dev/null; then
    echo "⚠️ Ghidra no está en los repos oficiales. Descárgala manualmente desde:"
    echo "➡️ https://ghidra-sre.org/"
else
    sudo apt install -y ghidra
fi

echo "🔗 Instalando ropper..."
pip3 install --upgrade ropper

echo "🐚 Instalando pwndbg para mejorar gdb..."
if [ ! -d "$HOME/pwndbg" ]; then
    git clone https://github.com/pwndbg/pwndbg.git ~/pwndbg
    cd ~/pwndbg
    ./setup.sh
    cd ~
fi

echo "🧠 Instalando retdec (descompilador CLI)..."
pip3 install --upgrade retdec

echo "🧪 Instalando angr y z3 (análisis simbólico)..."
pip3 install --upgrade angr z3-solver

echo "✅ ¡Entorno de Reverse Engineering para CTFs listo!"
