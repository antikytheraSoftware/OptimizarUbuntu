#!/bin/bash

echo "Soporte para LAMP"
echo El script se iniciará en 3s si no cierra el Terminal...
sleep 3s

#Buscamos la sesion del equipo
salidaWhoami=$(whoami)


#instalacion de apache y php
sudo apt-get install apache2 -y
sudo apt-get install php5 libapache2-mod-php5 -y
sudo /etc/init.d/apache2 restart

sudo chown -R $salidaWhoami:www-data /var/www
sudo chmod -R 777 /var/www
sudo chmod -R 777 /var/www/html
cat /media/$salidaWhoami/Archivos/OptimizarUbuntu/phpinfo.txt > /var/www/html/info.php


#                                       instalando mysql server
sudo apt-get install mysql-server mysql-client -y
sudo apt-get install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl -y
sudo /etc/init.d/apache2 restart#!/bin/bash


#Personalizando servidor mysql
sudo cp /etc/mysql/my.cnf /etc/mysql/my.cnf.bak
sudo cp /media/$salidaWhoami/Archivos/OptimizarUbuntu/my.cnf /etc/mysql/my.cnf
sudo ufw allow 3306
sudo mysql service restart
#----------------Importante!!!
#-----------no olvidar hacer esto dentro de la consola de mysql para crear usuarios, entrar como root a no se puede.

#CREATE USER 'usuario'@'localhost' IDENTIFIED BY 'escribir password del usuario	';
#FLUSH PRIVILEGES;
#para conectarse desde el cliente:
#mysql -u and -p -h dir-ip-del-server

echo ¡Instrucciones para crear usuarios en mysql,consultar dentro del archivo

#para joomla: 

#1.Descargar el fichero
#2.Crear la base de datos llamada Joomla en el usuario a usar 
#3.Entrar en mysql como root y poner:
      # GRANT ALL PRIVILEGES ON Joomla.* TO usuarioCreado@localhost IDENTIFIED BY 'password';






#REstaurando permisos seguros
sudo chmod -R 751 /var/www
sudo chmod -R 751 /var/www/html
