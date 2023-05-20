" Neovim Config

" `vim-plug`
call plug#begin()

Plug 'vim-airline/vim-airline' " fancy status bar
Plug 'preservim/nerdtree' " file system explorer
Plug 'romgrk/barbar.nvim' " fancy tabline
Plug 'numToStr/Comment.nvim' " easy comments: gcc gbc
Plug 'mhinz/vim-signify' " git changes sidebar
Plug 'mhinz/vim-startify' " fancy start screen
Plug 'nvim-zh/colorful-winsep.nvim' " fancy window seperators
Plug 'machakann/vim-highlightedyank' " highlight yanked text
Plug 'LudoPinelli/comment-box.nvim' " fancy comments
Plug 'itchyny/vim-cursorword' " underline word under cursor
Plug 'm4xshen/autoclose.nvim' " autoclose brackets etc
Plug 'edluffy/specs.nvim' " fancy 'show cursor'
Plug 'max397574/better-escape.nvim' " faster escape: jj / jk
Plug 'dstein64/vim-startuptime' " startup time profiling: :StartupTime
Plug 'dstein64/nvim-scrollview' " scroll bar
Plug 'wellle/context.vim' " fancy code context display
Plug 'fedepujol/move.nvim' " fancy line/block movement (MoveLine/MoveBlock)
Plug 'koenverburg/peepsight.nvim' " focus on a single function
Plug 'gorbit99/codewindow.nvim' " fancy code minimap: \mm
Plug 'matbme/JABS.nvim' " fancy buffer switcher

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
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'm-demare/hlargs.nvim' " Fancy argument coloring
Plug 'HiPhish/nvim-ts-rainbow2' " fancy rainbow parens etc

"" Colorschemes etc
Plug 'nvim-tree/nvim-web-devicons'
Plug 'ryanoasis/vim-devicons'
Plug 'ntpeters/vim-better-whitespace' " highlight whitespace
Plug 'nathanaelkane/vim-indent-guides' " fancy identation
Plug 'levouh/tint.nvim' " fancy tint on inactive windows
Plug 'phanviet/vim-monokai-pro'
Plug 'AlexvZyl/nordic.nvim'

"" Plugin Graveyard
"Plug 'ayu-theme/ayu-vim'
"Plug 'flazz/vim-colorschemes'
"Plug 'sainnhe/everforest'
"Plug 'wfxr/minimap.vim', {'do': ':!cargo install --locked code-minimap' }
"Plug 'vim-airline/vim-airline-themes'
"Plug 'Darazaki/indent-o-matic' " indent detection
"Plug 'gen740/SmoothCursor.nvim' " fancy cursor
"Plug 'jeffkreeftmeijer/vim-numbertoggle' " fancy number bar
"Plug 'code-biscuits/nvim-biscuits' " fancy end of blocks: \b
"Plug 'rafi/awesome-vim-colorschemes'

call plug#end()

" Shortcuts
nnoremap <leader>vv :source $MYVIMRC<cr>
nnoremap <leader>cc :!chezmoi apply<cr>
nnoremap <leader>w :NERDTreeFocus<cr>
nnoremap <leader>q :NERDTreeFind<cr>
nnoremap <leader>pp :PlugUpdate<cr>
nnoremap <leader>po :PlugClean!<cr>
nnoremap <leader>ff :Telescope find_files<cr>
nnoremap <leader>fg :Telescope live_grep<cr>
nnoremap <leader>fb :Telescope buffers<cr>
nnoremap <leader>fh :Telescope help_tags<cr>
nnoremap <leader>b :JABSOpen<cr>
nnoremap <C-Down> :bnext<cr>
nnoremap <C-Up> :bprevious<cr>
vnoremap <C-Down> :MoveBlock(1)<cr>
vnoremap <C-Up> :MoveBlock(-1)<cr>

"" I can't quit you
noremap <C-a> ggVG
vnoremap <C-C> "+y
noremap <C-V> "+gP
noremap <C-X> "+d
noremap <C-s> :w<cr>

" Config
set mouse=a
set guicursor=v-c-sm:block-blinkwait700-blinkon400-blinkoff250,n-i-ci-ve:ver25-blinkwait700-blinkon400-blinkoff250,r-cr-o:hor20-blinkwait700-blinkon400-blinkoff250
set tabstop=2 shiftwidth=2 softtabstop=2
set autoindent
set nowrap
set number
set nu
set list
set keymodel=startsel
set guifont=mononoki-Regular\ Nerd\ Font\ Complete\ Mono\ 11

let g:airline#extensions#tabline#enabled = 0 " don't use airline tabs
let g:airline_powerline_fonts = 1

augroup ShowNerdTreeOnStart
	autocmd VimEnter * NERDTree | wincmd p
augroup END

augroup EnablePeepsightOnStart
	autocmd VimEnter * :PeepsightEnable
augroup END

augroup RestoreCursorShapeOnExit
	autocmd!
	autocmd VimLeave * set guicursor=a:ver20-blinkwait700-blinkon400-blinkoff250
augroup END

" Colorscheme Config
set termguicolors

colorscheme nordic " from 'AlexvZyl/nordic.nvim'
highlight Comment cterm=italic gui=italic guifg=#777777

" Indentation Config
set listchars=tab:\ \ ,trail:·,nbsp:_
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=#1B1D1E
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=#1B1D1E

" Config Graveyard
"colorscheme blazer " from 'flazz/vim-colorschemes'
"colorscheme ayu " from 'ayu-theme/ayu-vim'
"colorscheme jellybeans " from 'rafi/awesome-vim-colorschemes'
"set listchars=tab:▸\ ,trail:·,nbsp:_
"colorscheme focuspoint " from 'rafi/awesome-vim-colorschemes'
"colorscheme monokai_pro " from 'phanviet/vim-monokai-pro'

" Lua Config
lua << EOF
-- use defaults
require('hlargs').setup()
require("autoclose").setup()
require("better_escape").setup()
require("noice").setup()
require('Comment').setup()
require('scrollview').setup()
require('tint').setup()
require('peepsight').setup()
require('jabs').setup()

-- customized configs
require'nvim-treesitter.configs'.setup {
	ensure_installed = {"rust", "vim", "go", "yaml", "lua"},
	highlight = { enable = true },
	rainbow = { enable = true },
}

require("colorful-winsep").setup({
	-- default config: https://github.com/nvim-zh/colorful-winsep.nvim#default-configuration
  highlight = {
    bg = "#16161E",
    fg = "#1F3442",
  },
  interval = 30,
  no_exec_files = { "packer", "TelescopePrompt", "mason", "CompetiTest", "NvimTree" },
  symbols = { "━", "┃", "┏", "┓", "┗", "┛" },
  close_event = function()
  end,
  create_event = function()
  end,
})

require('codewindow').setup({
  exclude_filetypes = {
		'nerdtree',
	},
})
require('codewindow').apply_default_keybinds()
require('codewindow').open_minimap()

-- Lua Graveyard
-- require("virt-column").setup()
-- require('smoothcursor').setup({
-- 	fancy = { enable = true }
-- })
-- require('nvim-biscuits').setup({
-- 	toggle_keybind = "<leader>b",
-- 	cursor_line_inline = true,
-- 	show_on_start = false,
-- })
EOF

