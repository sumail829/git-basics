#!/usr/bin/env bash
set -euo pipefail
set -x

if  id -u deployuser &>/dev/null  ; then
   sudo userdel -r deployuser
fi
sudo useradd -m -s /usr/sbin/nologin -p $(openssl passwd -1 suman) deployuser

