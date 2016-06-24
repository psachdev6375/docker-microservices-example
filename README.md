# docker-microservices-example

Uses docker-compose to set up 3 containrs: 

1. DB server using mysql:5.7 image. Uses docker-entrypoint-initdb.d to create database and load initial data in it. 

2. Eureka server for service discovery. Listens on port 8010 which is exposed. Base image is ubuntu 14.04 with Oracle Java 8 installed. 

3. API server with 1 microservice which links to both DB and Eureka containers. The service starts at a random port and registers with eureka. Base image is ubuntu-14.04 with oracle java 8 installed. 
