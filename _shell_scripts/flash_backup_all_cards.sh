How to flash bios on all cards of the same type
#!/bin/bash
num=`sudo /root/utils/atiflash -i | grep pass | wc -l`
romurl=http://<REPLACE WITH URL>/
romfile=<REPLACE WITH ROM FILE>
echo "$num cards detected"
echo "Downloading ROM file"
wget http://$romurl/$romfile -P /home/miner
echo "killing miner program" 
sudo killall -9 screen && screen -wipe
for (( i = 0; i < $num; i++ )); do
  Echo “Backing up card :$1”
  sudo /root/utils/atiflash -s $i /home/miner/$i.rom
  echo "Flashing card: $i"
  sudo /root/utils/atiflash -p $i /home/miner/$romfile
done
rm -f /home/miner/$romfile
