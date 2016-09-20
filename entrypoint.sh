#!/bin/sh

echo 'eula=true' > eula.txt
touch whitelist.json
touch ops.json
touch banned-ips.json
touch banned-players.json
exec ${@} -Xmx${HEAP_SIZE:="1024M"} -Xms${HEAP_SIZE:="1024M"} -jar /minecraft_server.jar nogui

