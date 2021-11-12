set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
call plug#begin()
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
Plug 'neovim/nvim-lspconfig'
call plug#end()
lua require('lspconfig').pyright.setup{…}
lua require('lspconfig').dockerls.setup{…}
lua require('lspconfig').terraformls.setup{…}
autocmd BufWritePre *.tf lua vim.lsp.buf.formatting()
source ~/.vimrc
