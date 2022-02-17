#!/bin/bash

#!In spigot.yml be sure "restart-script:" is set to "./start.sh"
#!When you want to start the server use the following command "sh ./start.sh" but it should be necessary.

#!Filename
JAR=paper.jar
#!Maximum RAM
MAXRAM=1024M
#!Minimum RAM
MINRAM=1024M

while true
do
    java -server -Xmx$MAXRAM -Xms$MINRAM -jar $JAR nogui
    echo "If you want you can completely stop the server, press Ctrl+C before the time is up!"
    echo "Rebooting in:"
    for i in 5 4 3 2 1
    do
        echo "$i..."
        sleep 1
    done
    echo "Rebooting now!"
    if [[ ! -f "ServerReboots.log" ]]; then
        touch "ServerReboots.log";
    fi
    echo "[$(date +"%d.%m.%Y %T")] ------------------- SERVER RESTARTS -------------------" >> ServerReboots.log
done