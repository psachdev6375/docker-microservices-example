# Dockerfile for running an rsyslog container for collecting logs.  

#Pull base image 
FROM ubuntu:14.04

MAINTAINER Puneet Sachdev <puneet.sachdev@gmail.com>

RUN apt-get update 
RUN apt-get install -y apt-transport-https
RUN apt-get install -y software-properties-common  
RUN apt-get install -y python-software-properties 
RUN add-apt-repository ppa:adiscon/v8-stable 
RUN apt-get update 
RUN apt-get install -y rsyslog 

RUN sed 's/#$ModLoad imudp/$ModLoad imudp/' -i /etc/rsyslog.conf
RUN sed 's/#$UDPServerRun 514/$UDPServerRun 514/' -i /etc/rsyslog.conf
RUN sed 's/#$ModLoad imtcp/$ModLoad imtcp/' -i /etc/rsyslog.conf
RUN sed 's/#$InputTCPServerRun 514/$InputTCPServerRun 514/' -i /etc/rsyslog.conf

EXPOSE 514/tcp 514/udp

ENTRYPOINT ["/usr/sbin/rsyslogd"]
CMD ["-n"]
#EXPOSE 514 514/udp
