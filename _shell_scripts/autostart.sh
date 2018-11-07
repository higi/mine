#!/bin/bash

TIME=`date +20%y-%m-%d`

date > /opt/start$TIME.txt

DEFAULT_DELAY=0
if [ "x$1" = "x" -o "x$1" = "xnone" ]; then
   DELAY=$DEFAULT_DELAY
else
   DELAY=$1
fi
sleep $DELAY
cd /opt/mine/_shell_scripts/P_V35_ETH
screen -dmS ethm ./start_ETH.sh

date > /opt/stop$TIME.txt
