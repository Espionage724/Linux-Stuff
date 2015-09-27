# Update distro
sudo dnf update

# Update TrinityCore
cd '/home/espionage724/trinitycore'
git pull origin 3.3.5

# Write changes to disk
sync

# Recompile TrinityCore
rm -R '/home/espionage724/build'
mkdir '/home/espionage724/build'
cd '/home/espionage724/build'
CC='distcc gcc' CXX='distcc g++' cmake '/home/espionage724/trinitycore' -DTOOLS=1 -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DWITH_WARNINGS=0 -DWITH_COREDEBUG=0 -DUSE_COREPCH=0 -DUSE_SCRIPTPCH=0 -DCMAKE_CXX_FLAGS='-O2 -pipe -march=amdfam10' -DCMAKE_C_FLAGS='-O2 -pipe -march=amdfam10'
DISTCC_HOSTS='192.168.1.150/10 localhost/2' make -j12

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
