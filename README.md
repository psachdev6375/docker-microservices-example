# docker-microservices-example

Uses docker-compose to set up 3 containers: 

1. DB server using mysql:5.7 image. Uses docker-entrypoint-initdb.d to create database and load initial data in it. 

2. Eureka server for service discovery. Listens on port 8010 which is exposed. Base image is ubuntu 14.04 with Oracle Java 8 installed. 

3. API server with 1 microservice which links to both DB and Eureka containers. The service starts at a random port and registers with eureka. Base image is ubuntu-14.04 with oracle java 8 installed. 

To setup pls follow the following steps: 
1. Install Vagrant and Virtualbox 
2. Clone the repository 
3. run "vagrant up docker"
4. SSH into the new VM created 
5. Install docker and docker-compose using shell script dockerinstall.sh 
6. Once docker is installed, add Vagrant user in docker group
7. export COMPOSE_API_VERSION=1.18
8. Build docker images for eureka and APIs by pulling base image of ubuntu 14.04 and install Oracle JDK8. Pls use commands in build-docker-images.sh 
9. Start containers using docker-compose up
10. Eureka console @ http://192.168.0.249:8010. Check the port no of the service registered in it. 
11. curl http://<ipof base>:<portno>/bases to see if it is working. 
