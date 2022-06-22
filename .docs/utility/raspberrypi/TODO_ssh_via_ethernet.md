Describe the situation where it is useful

## Connect via ssh to raspberry pi with ethernet cable
Open System Preference > Sharing

Click on Internet Sharing, than share wi-fi with USB 10/100/1000 LAN

Make sure that the computer is connected to wifi

$ ping raspberrypi.local

Recuperer l’adresse IP local puis ssh pi@Ip.local <192,168.2.2>
On peut aussi essayer avec ifconfig et regarder le port bridge100 le inet (l’adresse du Mac sur le réseau local ethernet).

