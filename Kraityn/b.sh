# Backup Databases
mysqldump -u dump -pX auth > '/home/espionage724/dumps/auth.sql'
mysqldump -u dump -pX characters > '/home/espionage724/dumps/characters.sql'
mysqldump -u dump -pX gnusocial > '/home/espionage724/dumps/gnusocial.sql'
mysqldump -u dump -pX joomla > '/home/espionage724/dumps/joomla.sql'
mysqldump -u dump -pX mybb > '/home/espionage724/dumps/mybb.sql'
mysqldump -u dump -pX wordpress > '/home/espionage724/dumps/wordpress.sql'
mysqldump -u dump -pX pvpgn > '/home/espionage724/dumps/pvpgn.sql'

# Archive Databases
zip -r '/home/espionage724/backups/'backup-$(date +%Y-%m-%d).zip '/home/espionage724/dumps/'*.sql

# Write changes to disk
sync

# Finish up
cd '/home/espionage724/'
