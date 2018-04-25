#!/bin/bash
num=`sudo /root/utils/atiflash -i | grep pass | wc -l`
echo "$num cards detected"
#echo "Downloading ROM file"
#wget https://www.dropbox.com/s/o0ej51cnk7oom8x/Pulse100.rom -P /home/miner
#echo "killing miner programm" 
sudo killall -9 screen && screen -wipe
for (( i = 0; i < $num; i++ )); do
  echo "Flashing card: $i"
  sudo /root/utils/atiflash -p $i /home/miner/Pulse100.rom
done
#rm -f /home/miner/Pulse100.rom
#sudo reboot