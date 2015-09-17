# Stop realmd and mangosd
sudo systemctl stop bnetserver
sudo systemctl stop worldserver

# Update TrinityCore
cd '/home/espionage724/trinitycore'
git pull origin 6.x

# Write changes to disk
sync

# Verify
echo "If TrinityCore is up-to-date, no point in continuing; press Ctrl + C to stop in 5 seconds"
sleep 5

# Recompile TrinityCore
cd '/home/espionage724/build'
cmake /home/espionage724/trinitycore -DTOOLS=1 -DCMAKE_INSTALL_PREFIX=/home/espionage724/run -DWITH_WARNINGS=0 -DWITH_COREDEBUG=0
make -j4
make install

# Write changes to disk
sync

# Finish up
sudo systemctl start bnetserver
sudo systemctl start worldserver
cd '/home/espionage724'
