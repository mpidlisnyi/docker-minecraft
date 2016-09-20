#!/bin/sh

echo 'eula=true' > eula.txt
touch whitelist.json
touch ops.json
touch banned-ips.json
touch banned-players.json
exec ${@}

