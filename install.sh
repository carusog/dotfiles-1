#####################
# Install Common Deps
#####################
# veromix \
sudo apt install -y \
  git curl xclip \
  gparted gufw \
  build-essential \
  audacity clementine \
  gimp kdenlive vlc \
  i3 \
  libappindicator1 \
  fonts-font-awesome fonts-powerline \
  python3-pip python-pip

# Screenshot to clipboard
sudo pip install escrotum

# Volta / node manager
curl https://get.volta.sh | bash

# Vim Deps
sudo apt install silversearcher-ag
pip install neovim
pip3 install neovim
pip3 install --user pynvim

# vim-plug
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

mkdir -p ~/.local/share/nvim/_backup
mkdir -p ~/.local/share/nvim/_temp
mkdir -p ~/.local/share/nvim/_undo
mkdir -p ~/.local/share/nvim/spell
mkdir -p ~/.config/

rm -rf ~/Applications 
rm -rf ~/scripts 
rm -rf ~/.themes 
rm -rf ~/.bash_profile 
rm -rf ~/.config/nvim

ln -s $PWD/home/Applications ~/Applications
ln -s $PWD/home/scripts ~/scripts
ln -s $PWD/home/.themes ~/.themes
ln -s $PWD/home/.bash_profile ~/.bash_profile
ln -s $PWD/home/.config/nvim ~/.config/nvim

echo "Symlinking ~/Application/nvim.appimage to /usr/bin/nvim . Will need sudo."
sudo ln -s ~/Applications/nvim.appimage /usr/bin/nvim

###############################################
# Load Ubuntu/Gnome Configuration + KeyMappings
###############################################
# cat home/.config/dconf/user.d/* | dconf load /

# NOTE: to export dconf settings:
# dconf dump / > ~/.config/dconf/user.d/everything.conf

