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
	if ! nc -vz pqlbpm02.smnyl.com.mx 9444 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 Port 9444" | $PATH/mail -s Broker01-Down-Port9444 jpinto@mnyl.com.mx,jpinto@interware.com.mx
    
		exit 1
	fi
	if ! nc -vz pqlbpm02.smnyl.com.mx 9447 2>/dev/null
	then
		$PATH/echo "existe, Mandar correo"
		$PATH/echo "Down Broker01 Port 9447" | $PATH/mail -s Broker01-Down-Port9447 jpinto@mnyl.com.mx,jpinto@interware.com.mx
    
		exit 1
	fi
fi
