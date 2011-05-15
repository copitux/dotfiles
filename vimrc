autocmd BufRead,BufNewFile *.py syntax on
autocmd BufRead,BufNewFile *.py set ai
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,with,try,except,finally,def,class

set tabstop=4 expandtab shiftwidth=4 softtabstop=4
set hlsearch
set incsearch
set cpoptions+=$
set background=dark
set ve=all
set wildmenu

call pathogen#runtime_append_all_bundles()
call pathogen#helptags()

map <F7> :NERDTreeToggle<CR>
map <F1> :cd wtelecom/edemocracia/trunk/web/src/<CR>
map <F2> <ESC>iimport ipdb; ipdb.set_trace()<CR><ESC>
