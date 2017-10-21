#!/bin/bash

function log {
  echo "=> $1"  >&2
}
log "save iptables to /etc/sysconfig/iptables file"
sudo service iptables save
