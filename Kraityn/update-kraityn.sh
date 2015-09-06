# Update GNU social
cd '/var/www/html'
sudo git pull

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
