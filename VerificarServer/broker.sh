#!/bin/sh
#Script realizado por jpinto para verificar la conexión a un server
DIR=/home/jpinto/SOMA
PATH=/usr/bin
# desde mi Linux es importante verificar si estoy dentro de la Red de SM (verificado primero la conexión al DP, en caso contrario no hacer nada
if ! nc -vz dpqroprod.smnyl.com.mx 9090 2>/dev/null
then
  $PATH/echo "Estoy fuera de la Red de SM"
    
  exit 1
else
	#confirmado que estoy dentro de la Red de SM verificar el server indicado
	if ! nc -vz pqliib01.smnyl.com.mx 9402 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 port 9402" | $PATH/mail -s Broker01-Donw-Port9402 jpinto@mnyl.com.mx,jpinto@interware.com.mx,servicio911@mnyl.com.mx,jhernandezc@mnyl.com.mx,priveraj@mnyl.com.mx,ltapiav@mnyl.com.mx
    
		exit 1
	fi
	if ! nc -vz pqliib01.smnyl.com.mx 9401 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 port 9401" | $PATH/mail -s Broker01-Donw-Port9401 jpinto@mnyl.com.mx,jpinto@interware.com.mx,servicio911@mnyl.com.mx,jhernandezc@mnyl.com.mx,priveraj@mnyl.com.mx,ltapiav@mnyl.com.mx
    
		exit 1
	fi
	if ! nc -vz pqliib01.smnyl.com.mx 9403 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 port 9403" | $PATH/mail -s Broker01-Donw-Port9403 jpinto@mnyl.com.mx,jpinto@interware.com.mx,servicio911@mnyl.com.mx,jhernandezc@mnyl.com.mx,priveraj@mnyl.com.mx,ltapiav@mnyl.com.mx
    
		exit 1
	fi
	if ! nc -vz pqliib01.smnyl.com.mx 9703 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 port 9703" | $PATH/mail -s Broker01-Donw-Port9703 jpinto@mnyl.com.mx,jpinto@interware.com.mx,servicio911@mnyl.com.mx,jhernandezc@mnyl.com.mx,priveraj@mnyl.com.mx,ltapiav@mnyl.com.mx
    
		exit 1
	fi
fi
