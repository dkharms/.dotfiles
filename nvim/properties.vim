syntax on
set nocompatible 
set relativenumber
set number

set mouse=a
set encoding=utf-8
set showmatch
set hlsearch
set incsearch
set scrolloff=999

set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4
set autoindent

set clipboard=unnamedplus
set ttyfast

filetype plugin indent on

autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
let g:gruvbox_contrast_dark="medium"
