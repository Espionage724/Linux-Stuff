# Stop services
sudo systemctl stop auth world pvpgn xonotic

# Install TrinityCore
cd '/home/espionage724/build'
make install

# Install PvPGN
cd '/home/espionage724/build-pvpgn'
sudo make install

# Take Ownership of PvPGN
sudo chown -R espionage724:espionage724 '/home/espionage724/build-pvpgn'
sudo chown -R espionage724:espionage724 '/home/espionage724/run-pvpgn'

# Update and Compile Xonotic Git
cd '/home/espionage724/xonotic'
'/home/espionage724/xonotic/all' update
'/home/espionage724/xonotic/all' compile dedicated

# Restart services
sudo systemctl start auth world pvpgn xonotic

# Finish up
cd '/home/espionage724'
sync
