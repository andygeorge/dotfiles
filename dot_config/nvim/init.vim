set mouse=a
set guicursor=

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'kana/vim-textobj-user'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap' }
Plug 'SidOfc/carbon.nvim'

call plug#end()

" Shortcuts
nnoremap <leader>sv :source $MYVIMRC<cr>
nnoremap <leader>pp :PlugUpdate<cr>
nnoremap <leader>po :PlugClean!<cr>
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
nnoremap <C-Down>   :bnext<cr>
nnoremap <C-Up>     :bprevious<cr>

" Config
let g:airline#extensions#tabline#enabled = 1
colorscheme blazer
set number
set nu

" Carbon
lua << EOF
  require('carbon').setup(function(settings)
    settings.keep_netrw = 'false'
  end)
EOF
