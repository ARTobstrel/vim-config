set nocompatible
let mapleader = ','
set number
set ruler
syntax on
set laststatus=2
set noshowmode

"Default Whitespace
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

"Wrapping text by default
set wrap
set linebreak

"Searching and highlights
set hlsearch
set incsearch
set ignorecase
set smartcase
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>

"Keep more content at the bottom of the buffer
set scrolloff=3

"Highlight cursor line
"set cursorline

"Tab completion
set wildmenu
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,assets/*,.idea/*

set backspace=indent,eol,start

filetype plugin indent on

"Directories for swp files
set backup
set backupdir=~/.vim/vim_backups//
set directory=~/.vim/vim_backups//
set viewdir=~/.vim/vim_backups//

set showcmd

set hidden

set history=1000

"Better ESC
imap <C-F> <ESC>
imap <C-c> <ESC>

"mappings
map <C-n> :NERDTreeToggle<CR>
map <Enter> o<ESC>
map <S-Enter> O<ESC>
map <C-p> "+p
map <C-y> "+y
map <C-a> <esc>ggVG

"256 colors for terminal vim
set t_Co=256

call plug#begin('~/.vim/plugged')
Plug 'Rip-Rip/clang_complete', {'for': ['c', 'cpp']}

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

Plug 'Valloric/YouCompleteMe'

" https://github.com/itchyny/lightline.vim
Plug 'itchyny/lightline.vim'

" Initialize plugin system
call plug#end()

" abbreviation
iab utf! # _*_ coding: UTF-8 _*_
iab pyth3! #!/usr/bin/python3
iab pyth! #!/usr/bin/python

let MRU_Max_Entries = 100
