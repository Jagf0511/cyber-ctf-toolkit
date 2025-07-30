#!/bin/bash
# Script de instalación para herramientas de Web Exploitation en CTFs

echo "🌐 Actualizando sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando herramientas básicas..."
sudo apt install -y git curl wget unzip python3 python3-pip python3-venv php apache2 jq httpie nodejs npm

echo "🛠️ Instalando herramientas de análisis y explotación web..."
sudo apt install -y sqlmap nikto wfuzz gobuster feroxbuster whatweb ffuf

echo "🧠 Instalando herramientas para manipulación de tráfico HTTP..."
sudo apt install -y mitmproxy burpsuite

echo "📡 Instalando herramientas adicionales..."
sudo apt install -y amass xsser docker.io docker-compose

echo "📚 Instalando librerías útiles en Python..."
pip3 install --upgrade requests beautifulsoup4 flask

echo "⚙️ Verificando instalación de NodeJS..."
node -v && npm -v

echo "✅ ¡Entorno para Web CTF listo!"

