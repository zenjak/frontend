cd /opt
sudo git clone https://aur.archlinux.org/yay-git.git
sudo chown -R jack ./yay-git
cd yay-git
makepkg -si
