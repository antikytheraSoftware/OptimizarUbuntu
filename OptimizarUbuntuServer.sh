#!/bin/bash

##recordar ejecutar con sh optimizarUbuntuServer.sh

echo "Optimización Server Ubuntu"
echo El script se iniciará en 3s si no cierra el Terminal...
sleep 3s

#Buscamos la sesion del equipo
salidaWhoami=$(whoami)

#--------------------instalando Virtual Box
gdebi /media/$salidaWhoami/Archivos/VirtualBox/virtualbox.deb
sudo usermod -G vboxusers -a $salidaWhoami
#              no olvidar en customize elegir virtualvox-->establecer la carpeta por
#              defecto de las Maquinas en /Archivos/VirtualBox
#..............configurar los valores iniciales e instalar las aditions

#--------------------instalando opera
gdebi /media/$salidaWhoami/Archivos/OptimizarUbuntu/opera_x64.deb 
#.............no olvidar descargar complemento youtube,adblockplus

#...................instalando drivers epson
gdebi /media/$salidaWhoami/Archivos/OptimizarUbuntu/driver_epson_x64.deb

#...................instalando team viewer
gdebi /media/$salidaWhoami/Archivos/OptimizarUbuntu/teamviewer.deb


#                       Instalacion de JDK
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

sudo apt-get install oracle-java8-installer
java -version

#                        instalando netbeans
sh /media/$salidaWhoami/Archivos/NetBeans/netbeans-7.4-linux.sh
#desinstalar desde  /usr/local/netbeans-version
#./uninstall.sh

#                       instalando programas adicionales
sudo apt-get install  python-tk
sudo apt-get install yakuake
sudo apt-get install shutter
sudo apt-get install winff
sudo apt-get install genius
sudo apt-get install inkscape
sudo apt-get install rar
sudo apt-get install nmap

#.........................instalacion de wine
sudo add-apt-repository ppa:ubuntu-wine/ppa
apt-get update
apt-get install wine


#........................recuperar archivos dañados de sd
sudo apt-get install testdisk
#se inicia con 
#sudo photorec


#------------------instalando GNS3 para simulación de redes
#recordar que se descargó una imagen IOS CISCO para el simulador  de http://dl.eram.shirazu.ac.ir/index.php?dir=Cisco/IOS/3700/&sort=size&sort_mode=a
#se descargó dynamips para amd64bits 


sudo apt-get install gns3
sudo cp /media/$salidaWhoami/Archivos/OptimizarUbuntu/dynamips_x64.bin /etc/gns3

#instalando XRDP
sudo apt-get install xrdp
echo "gnome-session --session=ubuntu-2d" > /home/$salidaWhoami/.xsession
#echo "gnome-session --session=gnome-fallback" > /home/YOURUSER/.xsession
#mapeando teclado en español
sudo cp /etc/xrdp/km-0409.ini /etc/xrdp/km-0409.ini.bak

#Buscamos la sesion del equipo
salidaWhoami=$(whoami)
sudo chmod -R 777 /etc/xrdp/km-0409.ini 

sudo cat /media/$salidaWhoami/Archivos/OptimizarUbuntu/tecladoXrdp > /etc/xrdp/km-0409.ini

sudo chmod -R 755 /etc/xrdp/km-0409.ini




