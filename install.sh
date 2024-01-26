#! sh
DOTFILE_DIR=~/.config/dotfiles
ZSH=	
echo $DOTFILE_DIR
mkdir -p $DOTFILE_DIR 
cp ./*.config $DOTFILE_DIR
cp -r  ./nvim ~/.config/nvim
#
sh -c "$(curl -L https://github.com/zsh-users/antigen/releases/download/v2.2.3/antigen.zsh > antigen.zsh)"
mv ./antigen.zsh $DOTFILE_DIR
ln -fs $DOTFILE_DIR/antigen.zsh ~/.local/bin/antigen.zsh

# sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp z.sh ~/z.sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
ln -f $DOTFILE_DIR/zshrc.config ~/.zshrc
ln -f $DOTFILE_DIR/tmux.config ~/.tmux.conf
ln -f $DOTFILE_DIR/alias.config ~/.zsh_alias
ln -f $DOTFILE_DIR/alias.config ~/.bash_aliases
ln -f $DOTFILE_DIR/vimrc.config ~/.vimrc
#ln -f $DOTFILE_DIR/vimrc.config ~/.vimrcln -fs $DOTFILE_DIR/init.vim ~/.config/nvim/init.vim
#fixes WSL Ping issues in debian
sudo setcap cap_net_raw+p /bin/ping
