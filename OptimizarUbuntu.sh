#!/bin/bash

echo "Optimización Ubuntu"
echo El script se iniciará en 3s si no cierra el Terminal...
sleep 3s

#                     volviendo más rapido ubuntu
sudo apt-get remove unity-lens-music
sudo apt-get autoremove unity-scope-musicstores
cat /media/and/Archivos/OptimizarUbuntu/swap.txt >> /etc/sysctl.conf

#---instalador de paquetes
sudo apt-get install gdebi


#instalacion de apache2
sudo apt-get install apache2 -y
sudo apt-get install php5 libapache2-mod-php5 -y
sudo /etc/init.d/apache2 restart
cat /media/and/Archivos/OptimizarUbuntu/phpinfo.txt > /var/www/info.php


sudo chown -R and:www-data /var/www
sudo chmod -R 755 /var/www




#                                       instalando mysql server
sudo apt-get install mysql-server mysql-client -y
sudo apt-get install php5-mysql php5-curl php5-gd php5-idn php-pear php5-imagick php5-imap php5-mcrypt php5-memcache php5-ming php5-ps php5-pspell php5-recode php5-snmp php5-sqlite php5-tidy php5-xmlrpc php5-xsl -y
sudo /etc/init.d/apache2 restart#!/bin/bash

#--------------------instalando Virtual Box
gdebi /media/and/Archivos/VirtualBox/virtualbox.deb
sudo usermod -G vboxusers -a and
#              no olvidar en customize elegir virtualvox-->establecer la carpeta por
#              defecto de las Maquinas en /Archivos/VirtualBox
#..............configurar los valores iniciales e instalar las aditions

#--------------------instalando opera
gdebi /media/and/Archivos/OptimizarUbuntu/opera_x64.deb 
#.............no olvidar descargar complemento youtube,adblockplus

#...................instalando drivers epson
gdebi /media/and/Archivos/OptimizarUbuntu/driver_epson_x64.deb


#                       Instalacion de JDK
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer
java -version

#                        instalando netbeans
sh /media/and/Archivos/NetBeans/netbeans-7.4-linux.sh
#desinstalar desde  /usr/local/netbeans-version
#./uninstall.sh

#                       instalando soporte para turtle en python
apt-get install  python-tk
apt-get install gnome
apt-get install yakuake
apt-get install amarok
apt-get install camorama
apt-get install cheese
apt-get install shutter
apt-get install winff
apt-get install genius
sudo apt-get install rar
sudo apt-get install nmap
sudo apt-get install inkscape
sudo apt-get install mysql-client
sudo apt-get install makepasswd 

#.........................instalacion de wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
apt-get update
apt-get install wine


#........................recuperar archivos dañados de sd
sudo apt-get install testdisk
#se inicia con 
sudo photorec


#------------------instalando GNS3 para simulación de redes
#recordar que se descargó una imagen IOS CISCO para el simulador  de http://dl.eram.shirazu.ac.ir/index.php?dir=Cisco/IOS/3700/&sort=size&sort_mode=a
#se descargó dynamips para amd64bits 


apt-get install gns3
cp /media/and/Archivos/OptimizarUbuntu/dynamips_x64.bin /etc/gns3













