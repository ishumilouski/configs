filetype plugin indent on
syntax on

let mapleader=';'

set relativenumber
set termguicolors
set backspace=indent,eol,start
set hidden
set noswapfile

set shiftwidth=4
set tabstop=4
set softtabstop=4
set autoindent
set smartindent
set expandtab
set incsearch
set nohlsearch

" wildmenu
set wildignorecase
set wildmenu
set wildmode=full
set completeopt=menuone
" ========

set path=app/**,*.*,src/**

" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'arcticicestudio/nord-vim'     " theme
" syntax highlighting
Plug 'pangloss/vim-javascript'      " JavaScript support
Plug 'leafgarland/typescript-vim'   " TypeScript syntax
Plug 'peitalin/vim-jsx-typescript'

Plug 'tpope/vim-unimpaired'
Plug 'tpope/vim-repeat'
Plug 'jiangmiao/auto-pairs'
" =======
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
" =======

colorscheme nord

source ~/.config/nvim/coc.vim
source ~/.config/nvim/explore.vim

