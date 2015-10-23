# Check, repair, and optimize all MySQL databases
mysqlcheck -u root -px --auto-repair --optimize --all-databases

# Write changes to disk
sync

# Finish up
cd '/home/espionage724/'
