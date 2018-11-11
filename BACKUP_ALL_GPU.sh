#!/bin/bash
num=`sudo /opt/mine/atiflash -i | grep pass | wc -l`
echo "$num cards detected"

for (( i = 0; i < $num; i++ )); do
  echo “Backing up card :$1”
  sudo /opt/mine/atiflash -s $i /opt/mine/gpu_backup/$i.rom
done
