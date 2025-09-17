wget https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -zxf nvim-linux-x86_64.tar.gz
sudo mv -f -T  nvim-linux-x86_64 /usr/share/nvim
export CUSTOM_NVIM_PATH=/usr/share/nvim/bin/nvim
# Set the above with the correct path, then run the rest of the commands:
set -u
sudo update-alternatives --install /usr/bin/ex ex /usr/share/nvim/bin/nvim 110
sudo update-alternatives --install /usr/bin/vi vi  /usr/share/nvim/bin/nvim 110
sudo update-alternatives --install /usr/bin/view view  /usr/share/nvim/bin/nvim 110
sudo update-alternatives --install /usr/bin/vim vim /usr/share/nvim/bin/nvim 110
sudo update-alternatives --install /usr/bin/vimdiff vimdiff /usr/share/nvim/bin/nvim 110  
