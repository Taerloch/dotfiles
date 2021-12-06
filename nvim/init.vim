set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath




"--------------------------------------------------------------------------
" Plugins
"--------------------------------------------------------------------------

" Automatically install vim-plug
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neovim/nvim-lspconfig'
call plug#end()
lua require('lspconfig').pyright.setup{…}
lua require('lspconfig').dockerls.setup{…}
lua require('lspconfig').terraformls.setup{…}
autocmd BufWritePre *.tf lua vim.lsp.buf.formatting()
" source ~/.vimrc
