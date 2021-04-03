#! /bin/bash
sudo apt-get update
# sudo apt-get install -y apache2
# sudo systemctl start apache2
# sudo systemctl enable apache2
# echo "<h1>Azure Linux VM with Web Server</h1>" | sudo tee /var/www/html/index.html

# follow https://www.digitalocean.com/community/tutorials/how-to-set-up-the-code-server-cloud-ide-platform-on-ubuntu-18-04

mkdir ~/code-server
cd ~/code-server
export latest_version=3.6.1
export USER=tfadmin

# wget https://github.com/cdr/code-server/releases/download/$latest_version/code-server-$latest_version-linux-x86_64.tar.gz

# follow https://www.digitalocean.com/community/tutorials/how-to-install-and-use-docker-on-ubuntu-18-04

sudo apt update
sudo apt install apt-transport-https ca-certificates curl software-properties-common -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
sudo apt update
apt-cache policy docker-ce
sudo apt install docker-ce -y
sudo systemctl status docker

sudo docker info
sudo docker run hello-world
sudo systemctl start docker
sudo systemctl enable docker

# docker compose
# https://www.digitalocean.com/community/tutorials/how-to-install-docker-compose-on-ubuntu-18-04
sudo curl -L https://github.com/docker/compose/releases/download/1.21.2/docker-compose-`uname -s`-`uname -m` -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

docker-compose --version
