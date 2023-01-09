" Neovim Config

" `vim-plug`
call plug#begin()

Plug 'vim-airline/vim-airline' " fancy status bar
Plug 'preservim/nerdtree' " file system explorer
Plug 'code-biscuits/nvim-biscuits' " fancy end of blocks: \b
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'romgrk/barbar.nvim' " fancy tabline
Plug 'numToStr/Comment.nvim' " easy comments: gcc gbc
Plug 'mhinz/vim-signify' " git changes sidebar

"" Telescope: fuzzy search: \ff \fg \fb
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' } "
Plug 'nvim-lua/plenary.nvim'

"" Noice: fancy messages
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

"" Syntax coloring
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hashivim/vim-terraform'

"" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'

"" Used?
" Plug 'kana/vim-textobj-user'
" Plug 'tpope/vim-surround'
" Plug 'tpope/vim-sensible'

"" Plugin Graveyard
"Plug 'ayu-theme/ayu-vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'sainnhe/everforest'
"Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap' }
" Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Shortcuts
nnoremap <leader>vv :source $MYVIMRC<cr>
nnoremap <leader>cc :!chezmoi apply<cr>
nnoremap <leader>w :NERDTreeFocus<cr>
nnoremap <leader>pp :PlugUpdate<cr>
nnoremap <leader>po :PlugClean!<cr>
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
nnoremap <C-Down> :bnext<cr>
nnoremap <C-Up> :bprevious<cr>

"" I can't quit you
noremap <C-a> ggVG
vnoremap <C-C> "+y
noremap <C-V> "+gP
noremap <C-X> "+d
noremap <C-s> :w<cr>

" Config
set mouse=a
set guicursor=
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap
set number
set nu
set list
set listchars=tab:▸\ ,trail:·,nbsp:_
set keymodel=startsel
let g:airline#extensions#tabline#enabled = 0 " don't use airline tabs
let g:airline_powerline_fonts = 1
set guifont=mononoki-Regular\ Nerd\ Font\ Complete\ Mono\ 11

" Colorscheme Config
set termguicolors
colorscheme focuspoint
highlight Comment cterm=italic gui=italic guifg=#777777

" Config Graveyard
"colorscheme blazer " from 'flazz/vim-colorschemes'
"colorscheme ayu " from 'ayu-theme/ayu-vim'
"colorscheme jellybeans " from 'rafi/awesome-vim-colorschemes'

" Lua Config
lua << EOF
require('nvim-biscuits').setup({
	toggle_keybind = "<leader>b",
})
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
}
require("noice").setup()
require('Comment').setup()
EOF

