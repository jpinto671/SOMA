#!/bin/sh
#Script realizado por jpinto para verificar la conexión a un server
DIR=/home/jpinto/SOMA
PATH=/usr/bin
if ! nc -vz pqlbpm02.smnyl.com.mx 9447 2>/dev/null
then
  $PATH/echo "existe, Mandar correo"
  $PATH/echo "Down Broker01" | $PATH/mail -s Broker01 jpinto@mnyl.com.mx,jpinto@interware.com.mx
    
  exit 1
fi
