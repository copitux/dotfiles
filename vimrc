" -------------------------------------------------------------------------------------------------
"   Python and basics

autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

set nocompatible
set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set hlsearch
set incsearch
set cpoptions+=$
set ve=all
set wildmenu

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

" -------------------------------------------------------------------------------------------------
"   Colors and so on

syntax enable
set background=dark
colorscheme solarized

if has('gui_running')
    
    set guifont=Inconsolata\ 11
    set lines=45 columns=194
    set guioptions-=T
    set guioptions-=m
    set guioptions-=L
    set guioptions-=r
    
endif

" -------------------------------------------------------------------------------------------------
"   Maps, alias ...

map <F7> :NERDTreeToggle<CR>
map <F1> :cd wtelecom/edemocracia/trunk/web/src/<CR>
map <F2> <ESC>iimport ipdb; ipdb.set_trace()<CR><ESC>
