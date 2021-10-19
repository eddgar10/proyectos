#bin/bash

#replace wlx30b5c2148432 for the name of your interface (see with nmcli)
#grep -q verify if contain the word "DOWN" that means that dont have connection on thes interface if down dot appear then is connected > the simbol makes a file named connectionstatus and inside print "connected and disconnected status, you can put this on a .bash file and make a cronjob to execute every minute,hour,day etc and add more things like hour, date, ip obtained
if ip link show wlx30b5c2148432 | grep -q "DOWN"; then echo "disconected"; else echo "connected " ; fi >> conn.txt
ifconfig wlx30b5c2148432 | grep "inet " >> conn.txt #imprime solo valores de IPV4
