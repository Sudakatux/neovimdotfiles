call plug#begin('~/.local/share/nvim/plugged')

Plug 'tpope/vim-surround'  " Es buena idea agregar una descripción del plugin
Plug 'numToStr/Comment.nvim'

call plug#end()
lua require('Comment').setup()
