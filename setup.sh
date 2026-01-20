#!/bin/bash
# --------------------------------------------------------
# Ubuntu Server Temel Kurulum Scripti
# Yazar: Akın Cenikli - DevSecOps Student
# Açıklama: Sunucuyu günceller, güvenlik duvarını (UFW) açar 
# ve temel araçları (git, htop, net-tools) kurar.
# --------------------------------------------------------

echo "🔄 Sistem paketleri güncelleniyor..."
sudo apt update && sudo apt upgrade -y

echo "🛠️ Gerekli araçlar kuruluyor (git, curl, htop, net-tools)..."
sudo apt install git curl htop net-tools unzip -y

echo "🛡️ Firewall aktif ediliyor (Sadece SSH portu açık)..."
sudo ufw allow ssh
sudo ufw enable

echo "✅ Kurulum tamamlandı! Sunucu kullanıma hazır."
