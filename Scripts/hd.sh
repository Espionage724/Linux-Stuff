sudo hdparm -W 1 /dev/sda
sudo hdparm -B 255 /dev/sda
sudo hdparm -M 0 /dev/sda
sudo hdparm -s 0 /dev/sda
sudo hdparm -S 0 /dev/sda
sudo hdparm -A 1 /dev/sda
sudo hdparm -Z /dev/sda
sudo hdparm -R0 /dev/sda
sudo hdparm -J 0 --please-destroy-my-drive /dev/sda
