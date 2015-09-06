# Update and do maintenance on GNU social
cd '/var/www/html'
sudo '/var/www/html/scripts/stopdaemons.sh'
sudo git pull
sudo php '/var/www/html/scripts/upgrade.php'
sudo php '/var/www/html/scripts/remove_duplicate_file_urls.php' -y
sudo php '/var/www/html/scripts/clean_thumbnails.php' -y
sudo php '/var/www/html/scripts/clean_profiles.php' -y
sudo php '/var/www/html/scripts/clean_file_table.php' -y
sudo php '/var/www/html/scripts/checkschema.php'
sudo php '/var/www/html/scripts/updateurls.php'
sudo '/var/www/html/scripts/startdaemons.sh'

# Update WordPress
cd '/var/www/html/blog'
sudo git pull

# Update Twenty-Sixteen WordPress Theme
cd '/var/www/html/blog/wp-content/themes/twentysixteen'
sudo git pull

# Update MyBB
cd '/var/www/html/forums'
sudo git pull

# Update distro
sudo apt-get update
sudo apt-get dist-upgrade

# Fix permissions
sudo chmod a+w -R '/var/www/html'

# Write changes to disk
sync

# Finish up
cd '/home/espionage724/'
