#!/bin/bash
num=`sudo /opt/mine/_shell_scripts/atiflash -i | grep pass | wc -l`
echo "$num cards detected"

for (( i = 0; i < $num; i++ )); do
  echo “Backing up card :$1”
  sudo /opt/mine/_shell_scripts/atiflash -s $i /opt/mine/_shell_scripts/gpu_backup/$i.rom
done
