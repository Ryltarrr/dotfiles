call plug#begin('~/.config/nvim/plugged')
" Fuzzy find
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
"Tree
Plug 'kyazdani42/nvim-tree.lua'
" LSP + Completion
Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
" For vsnip users.
Plug 'hrsh7th/cmp-vsnip'
Plug 'hrsh7th/vim-vsnip'

" Theming and Formatting
Plug 'kyazdani42/nvim-web-devicons'
Plug 'mhartington/formatter.nvim'
Plug 'dracula/vim'
Plug 'catppuccin/nvim', {'as': 'catppuccin'}
Plug 'arcticicestudio/nord-vim'
Plug 'gruvbox-community/gruvbox'
Plug 'tiagovla/tokyodark.nvim'
Plug 'projekt0n/github-nvim-theme'
Plug 'nvim-lualine/lualine.nvim'

" Plug 'projekt0n/github-nvim-theme'

" Better syntax highlighting
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Utilities
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'akinsho/toggleterm.nvim'
" Plug 'ggandor/lightspeed.nvim'
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'
Plug 'machakann/vim-highlightedyank'
Plug 'windwp/nvim-autopairs'
Plug 'junegunn/rainbow_parentheses.vim'
Plug 'mbbill/undotree'
call plug#end()

"neovide
let g:neovide_refresh_rate=60

let mapleader=" "


nnoremap <leader>t <cmd>CHADopen<cr>
nnoremap <leader>u <cmd>UndotreeToggle<cr>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppattern %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup PERSONAL
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

" let g:gruvbox_italic=1
" colorscheme gruvbox
" colorscheme dracula
let g:catppuccin_flavour = "macchiato"
colorscheme catppuccin

" colorscheme tokyodark
" colorscheme github_dark

lua << EOF
vim.opt.list = true

require("indent_blankline").setup {}
require'nvim-tree'.setup {}
require('gitsigns').setup{}
require'toggleterm'.setup {
  shade_terminals = false
}
require('nvim-autopairs').setup{}

EOF
