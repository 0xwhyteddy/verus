#!/bin/bash

curl -s https://data.zamzasalim.xyz/file/uploads/asclogo.sh | bash
sleep 2

# Fungsi untuk menampilkan teks berwarna hijau
print_green() {
    echo -e "\e[32m$1\e[0m"
}

# Update dan upgrade sistem
echo "Melakukan update dan upgrade sistem..."
apt update && apt upgrade -y

# Install net-tools
echo "Menginstal net-tools..."
apt install net-tools -y

# ufw tidak perlu dijalankan di GitLab CI
# sudo ufw allow 8080
# sudo ufw enable
# sudo ufw status

# Download dan ekstrak file
echo "Menyiapkan direktori dan mendownload file..."
cd $HOME
wget https://network3.io/ubuntu-node-v2.1.1.tar.gz
tar -xzf ubuntu-node-v2.1.1.tar.gz

sleep 2
# Masuk ke folder ubuntu-node dan menjalankan manager.sh
echo "Menjalankan manager.sh..."
cd ubuntu-node
bash manager.sh up

# Dapatkan private key dan hubungkan
echo "Mengambil private key"
bash manager.sh key | print_green

# Menentukan IP VPS
# VPS_IP=$(hostname -I | awk '{print $1}')  # Tidak diperlukan di GitLab CI

# Menampilkan URL dan instruksi untuk mengganti IP dengan IP VPS setelah proses selesai
echo "Done." 
# print_green "https://account.network3.ai/main?o=${VPS_IP}:8080" # Tidak diperlukan di GitLab CI
