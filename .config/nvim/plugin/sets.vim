if exists('$TMUX')
    " Colors in tmux
    let &t_8f = "<Esc>[38;2;%lu;%lu;%lum"
    let &t_8b = "<Esc>[48;2;%lu;%lu;%lum"
endif

set path+=**
set termguicolors
set background=dark
set guifont=Fira\ Code:h12

set mouse=nv

set exrc
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set number
set relativenumber

set nohlsearch
set inccommand=split

set hidden
set noerrorbells
set nowrap

set noshowmode

set ignorecase
set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

set incsearch
set scrolloff=8
set scroll=20

set signcolumn=yes
set colorcolumn=80
