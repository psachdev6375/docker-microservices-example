sudo apt-get update
sudo apt-get install -y docker.io 
sudo -s 
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
usermod -G docker vagrant
