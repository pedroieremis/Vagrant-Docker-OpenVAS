#!/bin/bash

apt update && apt install vim ssh sudo curl htop -y

curl -sSLkf https://get.docker.com | bash

usermod -aG docker vagrant

cd /home/vagrant

docker compose up -d --build

echo "---------------------------------------------------------------------------------------------"
echo " | ---------------- VAGRANT PROVISIONADA COM GREENBONE OPENVAS EM DOCKER!! ---------------- |"
echo "---------------------------------------------------------------------------------------------"