filetype plugin indent on
syntax on

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
" =======
Plug 'ycm-core/YouCompleteMe'       " Autocompletion
" autoformatting
Plug 'prettier/vim-prettier', {
  \ 'do': 'yarn install',
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
call plug#end()
" =======

colorscheme nord

" YouCompleteMe
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_always_populate_location_list = 1
" ======
