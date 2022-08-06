#! bin/bash 
sudo apt update 
sudo apt install git
sudo apt install curl
sudo apt -y install jq

#docker
sudo apt install docker.io 
sudo docker --version

#docker compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose --version