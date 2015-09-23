# Update distro
sudo dnf update

# Stop authserver and worldserver
sudo systemctl stop auth
sudo systemctl stop world

# Update TrinityCore
cd '/home/espionage724/trinitycore'
git pull origin 3.3.5

# Write changes to disk
sync

# Verify
echo "If TrinityCore is up-to-date, no point in continuing; press Ctrl + C to stop in 5 seconds"
sleep 5

# Recompile TrinityCore
rm -R '/home/espionage724/build'
mkdir '/home/espionage724/build'
cd '/home/espionage724/build'
env CC="ccache gcc" CXX="ccache g++" cmake '/home/espionage724/trinitycore' -DTOOLS=1 -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DWITH_WARNINGS=0 -DWITH_COREDEBUG=0 -DU$
make -j4 install

# Write changes to disk
sync

# Finish up
sudo systemctl start auth
sudo systemctl start world
cd '/home/espionage724'
