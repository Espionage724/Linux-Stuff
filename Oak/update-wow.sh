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
make clean
cmake '/home/espionage724/mangos' -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DINCLUDE_BINDINGS_DIR=ScriptDev2 -DPCH=1 -DDEBUG=0 -DWARNINGS=0
make -j2
make install

# Write changes to disk
sync

# Resync ClassicDB
cd '/home/espionage724/classicdb'

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
