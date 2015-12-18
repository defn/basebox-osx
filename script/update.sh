#!/bin/bash -eux

if [[ "$UPDATE" =~ ^(true|yes|on|1|TRUE|YES|ON])$ ]]; then

    echo "==> Running software update"
    while true; do 
      softwareupdate --install --all -v && break
    done
fi
