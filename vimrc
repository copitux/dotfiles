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
set smartcase
set cpoptions+=$
set wildmenu
set encoding=utf-8
let mapleader = ","
let python_hightlight_all = 1
set foldmethod=indent
set foldlevel=99
set showcmd

" Editor
syntax on
set t_Co=256
set ai ts=4 sw=4 sta et sts=4
set list
set lcs=tab:>-,trail:.,nbsp:.,eol:¬
set background=dark
colorscheme molokai

if has('gui_running')
    set guioptions=aegit
    set lines=44 columns=176
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
nn <Leader>s <ESC>:%s/\s\+$//<CR>

" AutoCommands
au FileType python set ft=python.django
au FileType {html,htmldjango} set ft=htmldjango.html
au BufNewFile *.py so $HOME/.vim/file_headers/python.txt
au FocusLost * :wa

" Plugins configs
"
" - Command-T
let g:CommandTMaxDepth = 8
let g:CommandTMaxHeight = 10
set wildignore+=.git,.svn,*.pyc
nnoremap <silent> <Leader><Leader> :CommandT<CR>
nnoremap <silent> <Leader><Leader>b :CommandTBuffer<CR>

" - Tagbar
let g:tagbar_left = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1
let g:tagbar_expand = 0
nn <silent> <F2> :TagbarOpen fj<CR>

" - SuperTab
let g:SuperTabDefaultCompletionType = "<c-x><c-i>"
"let g:SuperTabCompletionContexts = ['s:ContextText', 's:ContextDiscover']
"let g:SuperTabContextTextOmniPrecedence = ['&completefunc', '&omnifunc']
"let g:SuperTabContextDiscoverDiscovery = ["&completefunc:<c-x><c-i>"]
"let g:SuperTabSetDefaultCompletionType = "<c-i>"
let g:SuperTabCrClosePreview = 1
set completeopt=menu,longest,preview

" - EasyMotion
let g:EasyMotion_mapping_f = 'f'
let g:EasyMotion_mapping_F = 'F'
let g:EasyMotion_keys = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890'

" - Pyflakes.vim
let g:pyflakes_use_quickfix = 0

" - Snipmate
"   Tagbar
let g:snips_author = "David Medina"
"let g:snips_trigger_key=''

" - Pep8
let g:pep8_map='<leader>8'

" - Surround
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1%}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1%}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1%}\r{% endwith %}"
let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1%}\r{% endcomment %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1%}\r{% endfor %}"
let g:surround_{char2nr("v")} = "{{ \1 \r..*\r &\1\r }}"

" - Ropevim
so ~/.vim/ropevim.vim
nn <silent> <leader>g :RopeGotoDefinition<CR>
nn <silent> <leader>r :RopeRename<CR>

" - Zencondig
let g:user_zen_leader_key = '<leader>.'

if filereadable($VIRTUAL_ENV . '/.vimrc')
    source $VIRTUAL_ENV/.vimrc
endif

if filereadable($HOME . '/.vimrc_local')
    so ~/.vimrc_local
endif
