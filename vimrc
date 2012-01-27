" Vundle plugins
so ~/.vim/vundle.vim
filetype plugin indent on

" Globals
set backup
set backupdir=~/.vim/backup/,/tmp
set noswapfile
set laststatus=2
set hls
set incsearch
set cpoptions+=$
set wildmenu
set encoding=utf-8
let mapleader = ","

" Editor
syntax on
set t_Co=256
set ai ts=4 sw=4 sta et sts=4
set list
set lcs=tab:>-,trail:.,nbsp:.,eol:¬
set background=dark
colorscheme jellybeans

if has('gui_running')
    set guioptions=aegit
    set lines=44 columns=179
    set guifont=Ubuntu\ Mono\ 12
    set novb
    if has('mac')
        set guifont=Monaco:h14
        set vb t_vb=
    endif
endif

" Mappings
nn j gj
nn k gk
nn <c-h> <c-w>h
nn <c-j> <c-w>j
nn <c-k> <c-w>k
nn <c-l> <c-w>l

" AutoCommands
au FileType python set ft=python.django
au BufNewFile *.py so $HOME/.vim/file_headers/py_header.txt

" Plugins configs
"
" - Command-T
let g:CommandTMaxDepth = 8
let g:CommandTMaxHeight = 10
set wildignore+=.git,.svn,*.pyc

" - Tagbar
let g:tagbar_left = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_expand = 0
nn <silent> <F2> :TagbarOpen fj<CR>

" - SuperTab
let g:SuperTabDefaultCompletionType = "context"
let g:SuperTabCrClosePreview = 1
set completeopt=menuone,longest,preview

" - EasyMotion
let g:EasyMotion_leader_key = '.'

" - snipmate
let g:snips_author = "David Medina"
let g:snips_trigger_key='<M-e>'
