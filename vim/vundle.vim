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
" Activate it with au Bufsave?
Bundle 'bad-whitespace'
" unexplored help
Bundle 'surround.vim'
Bundle 'repeat.vim'
" snipMate related
" - Dependencies
Bundle "MarcWeber/vim-addon-mw-utils"
Bundle "tomtom/tlib_vim"
" - new continued snipMate
Bundle "garbas/vim-snipmate"
Bundle "snipmate-snippets"
"Bundle 'fugitive.vim'
"Bundle 'python_match.vim'
"Bundle 'ack.vim'
"Bundle 'reinh/vim-makegreen'
"Bundle 'pep8'
