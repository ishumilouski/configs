filetype plugin indent on
syntax on

let mapleader=','

set number relativenumber
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
set cuc

set dictionary=/usr/share/dict/words
set infercase

" plugins
call plug#begin('~/.config/nvim/plugged')
Plug 'morhetz/gruvbox'
" syntax highlighting
Plug 'peitalin/vim-jsx-typescript'
Plug 'leafgarland/typescript-vim'
Plug 'mxw/vim-jsx'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-surround'
Plug 'vifm/vifm.vim'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'tpope/vim-obsession'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
call plug#end()
" =======

set t_Co=256
set cursorline
colorscheme gruvbox

source ~/.config/nvim/coc.vim

set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number

hi User1 guifg=#eea040 guibg=#222222
hi User2 guifg=#dd3333 guibg=#222222
hi User3 guifg=#ff66ff guibg=#222222
hi User4 guifg=#a0ee40 guibg=#222222
hi User5 guifg=#eeee40 guibg=#222222

nnoremap <expr> j v:count ? (v:count > 5 ? "m'" . v:count : '') . 'j' : 'gj'
nnoremap <expr> k v:count ? (v:count > 5 ? "m'" . v:count : '') . 'k' : 'gk'

nnoremap n nzz
nnoremap N Nzz

augroup syntaxSyncMinLines
    autocmd!
    autocmd Syntax * syntax sync minlines=2000
augroup END

set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

autocmd BufReadPost fugitive://* set bufhidden=delete

" prettier
au FileType css,scss let b:prettier_exec_cmd = "prettier-stylelint"
let g:prettier#autoformat = 1
let g:prettier#autoformat_require_pragma = 0
" ======

nnoremap <leader>b :Vifm<cr>
nnoremap <leader>f :Files<cr>
nnoremap <leader>g :Rg<cr>

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

command! Gqf GitGutterQuickFix | copen
