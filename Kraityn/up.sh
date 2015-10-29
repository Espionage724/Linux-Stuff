# Update Drupal
cd '/var/www/html'
sudo -u apache git pull origin 7.x

# Update and do maintenance on GNU social
cd '/var/www/html/social'
sudo -u apache '/var/www/html/social/scripts/stopdaemons.sh'
sudo -u apache git pull origin nightly
sudo -u apache php '/var/www/html/social/scripts/upgrade.php'
sudo -u apache php '/var/www/html/social/scripts/remove_duplicate_file_urls.php' -y
sudo -u apache php '/var/www/html/social/scripts/clean_thumbnails.php' -y
sudo -u apache php '/var/www/html/social/scripts/clean_file_table.php' -y
sudo -u apache php '/var/www/html/social/scripts/updateurls.php'
sudo -u apache php '/var/www/html/social/scripts/checkschema.php'
sudo -u apache '/var/www/html/social/scripts/startdaemons.sh'

# Update WordPress
cd '/var/www/html/blog'
sudo -u apache git pull origin master

# Update MyBB
cd '/var/www/html/forums'
sudo -u apache git pull origin feature

# Update distro
sudo dnf update

# Write changes to disk
sync

# Finish up
cd '/home/espionage724/'
history -c
