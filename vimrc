" -------------------------------------------------------------------------------------------------
"   Python and basics


set nocompatible
filetype off
filetype plugin on
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set autoindent
set hlsearch
set incsearch
set cpoptions+=$
set ve=all
set wildmenu

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

" -------------------------------------------------------------------------------------------------
"   Colors and so on

syntax enable
set background=dark
colorscheme desert

if has('gui_running')
    
    set guifont=Inconsolata\ 11
    set lines=45 columns=174
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    
endif

" -------------------------------------------------------------------------------------------------
"   Maps, alias ...

nnoremap j gj
nnoremap k gk
