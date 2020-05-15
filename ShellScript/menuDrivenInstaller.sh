#!/bin/bash
while :
do
 clear
 echo "INSTALLATION MENU"
 echo "1. Install Apache"
 echo "2. Install Mysql"
 echo "3. Install Java 8"
 echo "4. Install Apache Tomcat"
 echo "5. Exit"
 echo -n "Please enter option [1 - 5]"
 read opt
 case $opt in
  1)
	sudo apt-get update;
	sudo apt install apache2;
	echo "Apache installed.";
    read enterkey;;
  2)
	sudo apt-get update;
	sudo apt-get install mysql-server;
	mysql --version;
	sudo mysql_secure_installation
	echo "Mysql installed.";
    read enterkey;;
  3)
	sudo apt install openjdk-8-jdk
    echo "Java8 installed.";
    read enterKey;;
  4)
	cd /tmp;
    curl -O https://apache.mirrors.lucidnetworks.net/tomcat/tomcat-9/v9.0.34/bin/apache-tomcat-9.0.34.tar.gz;
    sudo mkdir /opt/tomcat;
    sudo tar xzvf apache-tomcat-*tar.gz -C /opt/tomcat --strip-components=1;
	echo "Apache Tomcat installed.";
	read enterkey;;
  5) 
	echo "Bye-bye $USER";
    exit 1;;
  *)
	echo "$opt is an invaild option. Please select option between 1-5 only";
    echo "Press [enter] key to continue. . .";
    read enterKey;;
esac
done
