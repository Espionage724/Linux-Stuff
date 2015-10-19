# Update distro
sudo dnf update

# Update TrinityCore
cd '/home/espionage724/trinitycore'
git pull origin 3.3.5

# Update PvPGN
cd '/home/espionage724/pvpgn'
git pull origin master

# Write changes to disk
sync

# Recompile TrinityCore
rm -R '/home/espionage724/build'
mkdir '/home/espionage724/build'
cd '/home/espionage724/build'
CC='distcc clang' CXX='distcc clang++' cmake '/home/espionage724/trinitycore' -DTOOLS=1 -DCMAKE_INSTALL_PREFIX='/home/espionage724/run' -DWITH_WARNINGS=0 -DWITH_COREDEBUG=0 -DUSE_COREPCH=0 -DUSE_SCRIPTPCH=0 -DCMAKE_CXX_FLAGS='-O2 -pipe -march=amdfam10' -DCMAKE_C_FLAGS='-O2 -pipe -march=amdfam10' && sync
DISTCC_HOSTS='192.168.1.150/8 localhost/1' make -j9 && sync

# Recompile PvPGN
rm -R '/home/espionage724/build-pvpgn'
mkdir '/home/espionage724/build-pvpgn'
CC='distcc clang' CXX='distcc clang++' cmake '/home/espionage724/pvpgn' -DCMAKE_INSTALL_PREFIX='/home/espionage724/run-pvpgn' -DWITH_MYSQL=1 -DWITH_LUA=0 -DWITH_WIN32_GUI=0 -DCMAKE_CXX_FLAGS='-O2 -pipe -march=amdfam10' -DCMAKE_C_FLAGS='-O2 -pipe -march=amdfam10' && sync
DISTCC_HOSTS='192.168.1.150/8 localhost/1' make -j9 && sync

# Write changes to disk
sync

# Finish up
cd '/home/espionage724'
history -c
