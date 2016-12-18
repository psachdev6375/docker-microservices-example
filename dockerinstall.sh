#Update APT Repository 
sudo apt-get update

#Install Dockera
sudo apt-get install -y apt-transport-https ca-certificates
sudo apt-key adv --keyserver hkp://ha.pool.sks-keyservers.net:80 --recv-keys 58118E89F3A912897C070ADBF76221572C52609D
echo "deb https://apt.dockerproject.org/repo ubuntu-trusty main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update
sudo apt-get install -y linux-image-extra-$(uname -r) linux-image-extra-virtual
sudo apt-get install -y docker-engine 

#Install Docker Compose 
sudo -s 
curl -L https://github.com/docker/compose/releases/download/1.9.0/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
chmod +x /usr/local/bin/docker-compose
usermod -G docker vagrant

#--------------------OLD------------------------

#sudo apt-get install -y docker.io 

#Install Docker Compose 
#sudo -s 
#curl -L https://github.com/docker/compose/releases/download/1.6.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose
#chmod +x /usr/local/bin/docker-compose
#usermod -G docker vagrant

#Install Docker Machine 
#curl -L https://github.com/docker/machine/releases/download/v0.6.0/docker-machine-`uname -s`-`uname -m` > /usr/local/bin/docker-machine
#chmod +x /usr/local/bin/docker-machine

#Install Amazon Web Services client 
#sudo apt-get install -y python-pip
#sudo pip install boto awscli
