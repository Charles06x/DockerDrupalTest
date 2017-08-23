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
#Install Mysql-server (DATA BASE)...
RUN echo "mysql-server-5.1 mysql-server/root_password password your mysql_password" debconf-set-selections

#7
RUN echo "mysql-server-5.1 mysql-server/root_password_again password pass" debconf-set-selections

#8
RUN DEBIAN_FRONTEND=noninteractive apt-get install mysql-server -y

#9
RUN  apt-get install php mysql-client libapache2-mod-php php-mcrypt php-mysql -y
