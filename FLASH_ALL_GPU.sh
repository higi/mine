#!/bin/bash

num=`sudo /opt/mine/atiflash -i | grep pass | wc -l`

echo "$num cards detected"

for (( i = 0; i < $num; i++ )); do
  echo "Flashing card: $i"
  sudo /opt/mine/atiflash -f -p $i /opt/mine/gpu_restore/higi1000mv.rom
done
