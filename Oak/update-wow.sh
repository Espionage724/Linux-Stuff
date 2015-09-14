# Warning
echo "MAKE SURE THAT REALMD AND MANGOSD ARE STOPPED, you have 15 seconds to cancel the script"
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

# Update ClassicDB
cd '/home/espionage724/classicdb'
git pull

# Write changes to disk
sync

# Recompile CMaNGOS and ScriptDev2
cd '/home/espionage724/build'

cmake '/home/espionage724/mangos' -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DINCLUDE_BINDINGS_DIR=ScriptDev2 -DPCH=1 -DDEBUG=0 -DWARNINGS=0
make -j4
make install

# Write changes to disk
sync

# Resync ClassicDB
cd '/home/espionage724/classicdb'
./InstallFullDB.sh

# Database SQL Updates
# Change this if mangosd fails to start because of some update or if ClassicDB fixes something
mysql -u mangos -h 192.168.1.153 --password=CNG mangos < '/home/espionage724/mangos/sql/updates/0.12.3/z2678_03_mangos.sql'
mysql -u mangos -h 192.168.1.153 --password=CNG mangos < '/home/espionage724/mangos/sql/updates/0.12.3/z2680_01_mangos_battleground_template.sql'
mysql -u mangos -h 192.168.1.153 --password=CNG mangos < '/home/espionage724/mangos/sql/updates/0.12.3/z2681_01_mangos_mangos_string.sql'

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
