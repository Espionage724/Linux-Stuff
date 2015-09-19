sudo systemctl disable auth
sudo systemctl disable world
sudo systemctl disable mt
sudo systemctl daemon-reload
sudo systemctl enable auth
sudo systemctl enable world
sudo systemctl enable mt
