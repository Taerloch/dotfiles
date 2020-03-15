DOTFILE_DIR=~/.config/dotfiles
echo $DOTFILE_DIR
mkdir -p $DOTFILE_DIR 
cp ./*.config $DOTFILE_DIR

ln -f $DOTFILE_DIR/zshrc.config ~/.zshrc
ln -f $DOTFILE_DIR/tmux.config ~/.tmux.conf
