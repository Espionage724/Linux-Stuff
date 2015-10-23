# Start at home
cd '/home/espionage724'

# Backup databases
mysqldump -u dump -px auth > '/home/espionage724/dumps/auth.sql'
mysqldump -u dump -px characters > '/home/espionage724/dumps/characters.sql'
mysqldump -u dump -px gnusocial > '/home/espionage724/dumps/gnusocial.sql'
mysqldump -u dump -px joomla > '/home/espionage724/dumps/joomla.sql'
mysqldump -u dump -px mybb > '/home/espionage724/dumps/mybb.sql'
mysqldump -u dump -px wordpress > '/home/espionage724/dumps/wordpress.sql'

# Archive databases
zip -r backups/backup-$(date +%Y-%m-%d).zip dumps/*.sql

# Write changes to disk
sync
