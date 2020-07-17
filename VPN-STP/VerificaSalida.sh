#!/bin/sh
#Script realizado por jpinto para verificar si existen errores en el tuner VPN-STP
#Script VPN-STP-QA
DIR=/home/jpinto/SOMA
PATH=/usr/bin
$PATH/sleep 30
cd $DIR
 var=`$PATH/cat $DIR/QA.log|$PATH/grep refused >$DIR/SalidaQa.log`
 vari=`$PATH/cat $DIR/SalidaQa.log | wc -l`
 i=1

if [ $i -le $vari ]; then
    $PATH/echo "existe, Mandar correo"
	$PATH/echo Down VPN-STP-QA | $PATH/mail -s VPN-STP-QA jpinto@mnyl.com.mx,jpinto671@gmail.com
else
    $PATH/echo "no existe"
fi
#Script VPN-STP-DP1

 var1=`$PATH/cat $DIR/DP1.log|$PATH/grep refused >$DIR/SalidaDP1.log`
 variP=`cat $DIR/SalidaDP1.log | wc -l`
 if [ $i -le $variP ]; then
    $PATH/echo "existe, Mandar correo"
    $PATH/echo "Down VPN-STP-DP1-129.170.146.13" | $PATH/mail -s VPN-STP-DP1 jpinto@mnyl.com.mx,jpinto671@gmail.com,faguirreg@mnyl.com.mx,priveraj@mnyl.com.mx
    
 else
    $PATH/echo "no existeDP1"
 fi

#Script VPN-STP-DP2

 var1=`$PATH/cat $DIR/DP2.log|$PATH/grep refused >$DIR/SalidaDP2.log`
 variP=`cat $DIR/SalidaDP2.log | wc -l`
 if [ $i -le $variP ]; then
    $PATH/echo "existe, Mandar correo"
    $PATH/echo "Down VPN-STP-DP2-192.170.146.14" | $PATH/mail -s VPN-STP-DP2 jpinto@mnyl.com.mx,jpinto671@gmail.com,faguirreg@mnyl.com.mx,priveraj@mnyl.com.mx
 else
    $PATH/echo "no existeDP2"
 fi 