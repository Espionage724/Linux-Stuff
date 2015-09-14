# Warning
echo "MAKE SURE THAT REALMD AND MANGOSD ARE STOPPED, you have 15 seconds to cancel the script (Ctrl + C)"
sleep 15

# Update CMaNGOS
cd '/home/espionage724/mangos'
git pull

# Update ScriptDev2
cd '/home/espionage724/mangos/src/bindings/ScriptDev2'
git pull

# Update ACID
cd '/home/espionage724/acid'
git pull

# Update UDB
cd '/home/espionage724/udb'
git pull

# Write changes to disk
sync

# Verify
echo "If all 4 options above are already up-to-date, no point in continuing; press Ctrl + C to stop in 5 seconds"
sleep 5

# Recompile CMaNGOS and ScriptDev2
cd '/home/espionage724/build'
make clean
cmake '/home/espionage724/mangos' -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DINCLUDE_BINDINGS_DIR=ScriptDev2 -DPCH=1 -DDEBUG=0 -DWARNINGS=0
make -j4
make install

# Write changes to disk
sync

# Resync UDB
cd '/home/espionage724/udb'
./InstallFullDB.sh

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
