#!/bin/bash

if [ "$1" ]; then

    KNOWN_HOSTS_FILE=$1

else

    KNOWN_HOSTS_FILE=~/.ssh/known_hosts

fi

if [ ! -f "$KNOWN_HOSTS_FILE" ]; then

  echo "Can't find known_host file: $1 does not exist."
  exit 1

fi

for ip in $(for i in $(seq -f "140.82.%g.%%g" 112 127); do seq -f $i 1 254; done); do ssh-keygen -R $ip -f $KNOWN_HOSTS_FILE; done

echo -e "\n----------------------------"
echo "Finished reemovin github IP address keys."
echo -e "----------------------------"