DOTFILE_DIR=~/.config/dotfiles
echo $DOTFILE_DIR
mkdir -p $DOTFILE_DIR 
cp ./*.config $DOTFILE_DIR
cp -r nvim $DOTFILE_DIR
ln -f $DOTFILE_DIR/zshrc.config ~/.zshrc
ln -f $DOTFILE_DIR/tmux.config ~/.tmux.conf
ln -f $DOTFILE_DIR/alias.config ~/.zsh_alias``
ln -f $DOTFILE_DIR/vimrc.config ~/.vimrc
ln -fs $DOTFILE_DIR/nvim ~/.config/nvim
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
cp z.sh ~/z.sh
curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
