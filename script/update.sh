#!/bin/bash -eux

echo "==> Running software update"
softwareupdate --install --all -v
