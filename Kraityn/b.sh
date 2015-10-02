# Backup Databases
mysqldump -u root -pX auth > '/home/espionage724/dumps/auth.sql'
mysqldump -u root -pX characters > '/home/espionage724/dumps/characters.sql'
mysqldump -u root -pX gnusocial > '/home/espionage724/dumps/gnusocial.sql'
mysqldump -u root -pX joomla > '/home/espionage724/dumps/joomla.sql'
mysqldump -u root -pX mybb > '/home/espionage724/dumps/mybb.sql'
mysqldump -u root -pX wordpress > '/home/espionage724/dumps/wordpress.sql'

# Archive Databases
zip -r '/home/espionage724/backups/'backup-$(date +%Y-%m-%d).zip '/home/espionage724/dumps/'*.sql

# Write changes to disk
sync

# Finish up
cd '/home/espionage724/'
