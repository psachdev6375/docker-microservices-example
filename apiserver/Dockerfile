# Dockerfile for base container for deploying microservices 

#Pull base image 
FROM ubuntu 

#Install Java 
RUN \
  echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections && \
  apt-get update && \
  apt-get install -y software-properties-common && \
  add-apt-repository -y ppa:webupd8team/java && \
  apt-get update && \
  apt-get install -y oracle-java8-installer && \
  rm -rf /var/lib/apt/lists/* && \
  rm -rf /var/cache/oracle-jdk8-installer

# Define JAVA_HOME variable 
ENV JAVA_HOME /usr/lib/jvm/java-8-oracle

# Copy base service Application 
ADD BaseService-Demo.jar BaseService-Demo.jar

# Touch the jar file 
RUN bash -c 'touch /BaseService-Demo.jar'

# Expose 8010 port 
#EXPOSE 8010

# Run base service server 
CMD java -jar BaseService-Demo.jar --mysql.ip=${DB_PORT_3306_TCP_ADDR} --mysql.port=${DB_PORT_3306_TCP_PORT} --mysql.rootuser=root --mysql.rootpassword=${DB_ENV_MYSQL_ROOT_PASSWORD} --eureka.ip=${EUREKA_PORT_8010_TCP_ADDR}

