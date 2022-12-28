" Neovim Config

" `vim-plug`
call plug#begin()

Plug 'tpope/vim-sensible'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'branch': '0.1.x' }
Plug 'kana/vim-textobj-user'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'hashivim/vim-terraform'
Plug 'tpope/vim-surround'
Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap' }
Plug 'preservim/nerdtree'
Plug 'code-biscuits/nvim-biscuits'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'numToStr/Comment.nvim'

"" Noice
Plug 'folke/noice.nvim'
Plug 'MunifTanjim/nui.nvim'
Plug 'rcarriga/nvim-notify'

"" Colorschemes
Plug 'rafi/awesome-vim-colorschemes'

"" Plugin Graveyard
"Plug 'ayu-theme/ayu-vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'sainnhe/everforest'

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
	toggle_keybind = "<leader>bb",
})
require'nvim-treesitter.configs'.setup {
	ensure_installed = "all",
}
require("noice").setup()
require('Comment').setup()
EOF

