#1
FROM ubuntu:16.04

#2
MAINTAINER Charles

#3
RUN apt-get clean

#4
#Update images availables...  ---***---***
RUN apt-get update

#5
#Install apache image...
RUN apt-get install apache2 -y

#6
#Install MariaDB (DATA BASE)...
RUN apt-get install mariadb -y
