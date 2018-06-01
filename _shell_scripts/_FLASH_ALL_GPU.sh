#!/bin/bash

num=`sudo /opt/mine/_shell_scripts/atiflash -i | grep pass | wc -l`

echo "$num cards detected"

for (( i = 0; i < $num; i++ )); do
  echo "Flashing card: $i"
  sudo /opt/mine/_shell_scripts/atiflash -f -p $i /opt/mine/_shell_scripts/gpu_restore/vlad.rom
done
