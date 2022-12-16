set mouse=a
set guicursor=
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap
set number
set nu
set list
set listchars=tab:▸\ ,trail:·,nbsp:_

call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'nvim-tree/nvim-web-devicons'
Plug 'kana/vim-textobj-user'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'flazz/vim-colorschemes'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap' }
Plug 'preservim/nerdtree'
Plug 'code-biscuits/nvim-biscuits'
Plug 'akinsho/bufferline.nvim', { 'tag': 'v3.1.*' }
Plug 'ryanoasis/vim-devicons'

call plug#end()

" Shortcuts
nnoremap <leader>vv :source $MYVIMRC<cr>
nnoremap <leader>ww :NERDTreeFocus<cr>
nnoremap <leader>pp :PlugUpdate<cr>
nnoremap <leader>po :PlugClean!<cr>
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
nnoremap <C-Down>   :bnext<cr>
nnoremap <C-Up>     :bprevious<cr>

" Config
let g:airline#extensions#tabline#enabled = 0
let g:airline_powerline_fonts = 1
colorscheme blazer
set guifont=mononoki-Regular\ Nerd\ Font\ Complete\ Mono\ 11

lua << EOF
require("bufferline").setup{}
require('nvim-biscuits').setup({
	toggle_keybind = "<leader>cb",
	cursor_line_only = true,
	show_on_start = true,
})
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
}
EOF

