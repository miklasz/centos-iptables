#!/bin/bash

function log {
  echo "=> $1"  >&2
}
log ""
log ""
log "Enable http:"
iptables -A INPUT -p tcp -m tcp --dport 80 -j ACCEPT
log ""
log ""
log "ENABLE https:"
iptables -A INPUT -p tcp -m tcp --dport 443 -j ACCEPT
log ""
log ""
log "show all the rules"
log ""
log ""
sudo iptables -S
log ""
log ""
log "DONE :-)"
log ""
log ""

