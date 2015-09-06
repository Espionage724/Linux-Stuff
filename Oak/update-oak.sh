# Update CMaNGOS
cd '/home/espionage724/mangos'
git pull

# Update ScriptDev2
cd '/home/espionage724/mangos/src/bindings/ScriptDev2'
git pull

# Update ACID
cd '/home/espionage724/acid'
git pull

# Update ClassicDB
cd '/home/espionage724/classicdb'
git pull

# Update distro
sudo apt-get update
sudo apt-get dist-upgrade

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
