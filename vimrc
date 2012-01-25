set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'wincent/Command-T'

filetype plugin indent on     " required! 
syntax on
set t_Co=256
set laststatus=2
set background=dark
colorscheme jellybeans
set guioptions=-T
set guioptions=-C
let mapleader = ","
