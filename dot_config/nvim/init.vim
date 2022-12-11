set guicursor=

call plug#begin()

" telescope
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-tree/nvim-web-devicons'

" misc plugins
Plug 'kana/vim-textobj-user'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'

call plug#end()

" Shortcuts
nnoremap <leader>sv :source $MYVIMRC<CR>
nnoremap <leader>pp :PlugInstall<CR>
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
