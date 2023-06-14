#!/bin/bash

if [ "$1" ]; then

  KNOWN_HOSTS_FILE=$1
  
  echo "$KNOWN_HOSTS_FILE"

    if [ ! -f "$KNOWN_HOSTS_FILE" ]; then

      echo "$1 does not exist."
      exit 1
  
    else 

      # First we remove any keys that exists
      ssh-keygen -R github.com -f $KNOWN_HOSTS_FILE

      # Then we update the new ones
      curl -L https://api.github.com/meta | jq -r '.ssh_keys | .[]' | sed -e 's/^/github.com /' >> $KNOWN_HOSTS_FILE
  
    fi
  
else

  # First we remove any keys that exists
  ssh-keygen -R github.com

  # Then we update the new ones
  curl -L https://api.github.com/meta | jq -r '.ssh_keys | .[]' | sed -e 's/^/github.com /' >> ~/.ssh/known_hosts

fi

echo -e "\n----------------------------"
echo "Updated github.com keys."
echo -e "----------------------------"