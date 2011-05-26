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

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

" -------------------------------------------------------------------------------------------------
"   Colors and so on

syntax enable
set background=dark
colorscheme solarized

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
map <C-L> <C-W>l<C-W>_
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-H> <C-W>h<C-W>_
cmap W w                        
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe

map <F7> :NERDTreeToggle<CR>
map <F1> :cd wtelecom/edemocracia/trunk/web/src/<CR>
map <F2> <ESC>iimport ipdb; ipdb.set_trace()<CR><ESC>
