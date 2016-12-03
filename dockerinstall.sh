#Update APT Repository 
sudo apt-get update

#Install Docker
sudo apt-get install -y docker.io 

#Install Docker Compose 
sudo -s 
curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
usermod -G docker vagrant

#Install Docker Machine 
curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine
chmod +x /usr/local/bin/docker-machine

#Install Amazon Web Services client 
sudo apt-get install -y python-pip
sudo pip install boto awscli
