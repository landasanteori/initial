#!/bin/bash

# Perbarui daftar paket dan sistem
sudo apt update && sudo apt upgrade -y

# Instal OpenJDK 17
sudo apt install openjdk-17-jdk -y

# Verifikasi instalasi
java -version

# Setel variabel lingkungan JAVA_HOME
echo "JAVA_HOME=\"/usr/lib/jvm/java-17-openjdk-amd64\"" | sudo tee -a /etc/environment
source /etc/environment

# Verifikasi variabel lingkungan
echo $JAVA_HOME

echo "Java JDK 17 telah berhasil diinstal dan dikonfigurasi."
