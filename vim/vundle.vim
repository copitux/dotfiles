set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'Lokaltog/vim-powerline'
Bundle 'nanotech/jellybeans.vim'
Bundle 'wincent/Command-T'
Bundle 'majutsushi/tagbar'
Bundle 'The-NERD-Commenter'
Bundle 'ervandew/supertab'
Bundle 'EasyMotion'
Bundle 'surround.vim'
Bundle 'repeat.vim'
Bundle 'fugitive.vim'
Bundle 'python_match.vim'
Bundle 'ack.vim'
Bundle 'pep8'
Bundle 'pyflakes'
Bundle 'pyflakes.vim'
Bundle 'pydoc.vim'
Bundle 'ZoomWin'
Bundle 'reinh/vim-makegreen'
" snipMate related
" - Dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
" - new continued snipMate
Bundle "garbas/vim-snipmate"