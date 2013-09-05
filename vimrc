"
"                       __   _(_)_ __ ___  _ __ ___
"                       \ \ / / | '_ ` _ \| '__/ __|
"                        \ V /| | | | | | | | | (__
"                       (_)_/ |_|_| |_| |_|_|  \___|
"
" Author: David Medina <davidmedina9@gmail.com>
" Source: http://github.com/copitux/dotfiles
" Fork: http://github.com/joedicastro/dotfiles <joedicastro.com>

" NEOBUNDLE, plugin manager {{{

set nocompatible

" NeoBundle auto-installation and setup {{{

" Auto installing NeoBundle
let neobundle_readme=expand($HOME.'/.vim/bundle/neobundle.vim/README.md')
if !filereadable(neobundle_readme)
  echo "Installing NeoBundle.."
  echo ""
  silent !mkdir -p $HOME/.vim/bundle
  silent !git clone https://github.com/Shougo/neobundle.vim $HOME/.vim/bundle/neobundle.vim
endif

" Call NeoBundle
if has('vim_starting')
  set rtp+=$HOME/.vim/bundle/neobundle.vim/
endif
call neobundle#rc(expand($HOME.'/.vim/bundle/'))

NeoBundleFetch 'Shougo/neobundle.vim'

" End: NeoBundle auto-installation and setup }}}

" Plugins {{{

" Run on background
NeoBundle 'Shougo/vimproc', {'build': {'unix': 'make -f make_unix.mak'}}
" Zoom in and out windows splits
NeoBundleLazy 'vim-scripts/zoomwintab.vim', {'autoload': {'commands': 'ZoomWinTabToggle'}}

NeoBundle 'tpope/vim-surround'                      " Tpope must: surround
NeoBundle 'tpope/vim-repeat'                        " Tpope must: . improved
NeoBundle 'tpope/vim-commentary'                    " Tpope must: comment code
NeoBundle 'scrooloose/syntastic'                    " Syntax checking
NeoBundle 'kien/ctrlp.vim'                          " Fuzzy file search
NeoBundle 'bling/vim-airline'                       " Pretty status line
NeoBundle 'Shougo/unite.vim'                        " Unite. The interface to rule almost everything
" NeoBundle 'Shougo/neocomplete.vim'                  " Auto completion solution
NeoBundle 'Raimondi/delimitMate'                    " Auto completion for ([{' ...

" Colorschemes: jellybeans, solarized {{{

NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'altercation/vim-colors-solarized'

" }}}

" XXX: To see it
" python-mode: python motions
" matchit and python_matchit
" virtualenv

" End: Plugins }}}

NeoBundleCheck

filetype plugin indent on      " Indent and plugins by filetype

" End: NEOBUNDLE, plugin manager }}}

" VIM core {{{

" <Leader> & <LocalLeader> mapping {{{

let mapleader=','
let maplocalleader= ' '                     " Unite key. XXX: See it

" End: <Leader> & <LocalLeader> mapping }}}

" Basic options {{{

set encoding=utf-8
scriptencoding utf-8
set autoread                                " Update a open file edited outside of Vim
set backspace=indent,eol,start              " Defines the backspace key behavior
set guioptions=aegit                        " Hide: toolbar, menu and scrollbars
set hidden                                  " Hide the inactive buffers
set laststatus=2                            " Status line always visible
set listchars=tab:>-,trail:.,nbsp:.,eol:¬   " Highlight problematic whitespace
set list                                    " shows hidden chars
set ruler                                   " (x, y) of cursor at statusline
set showcmd                                 " Show commands near statusline
set title                                   " Set the terminal title to the current file
set ttyfast                                 " better screen redraw
set visualbell                              " turn on the visual bell

" End: Basic options }}}

" Backups and undo {{{

set nobackup
set noswapfile
set undodir=$HOME/.vim/tmp/undo/
set undofile

function! MakeDirIfNoExists(path) "{{{
    if !isdirectory(expand(a:path))
        call mkdir(expand(a:path), "p")
    endif
endfunction "}}}
silent! call MakeDirIfNoExists(&undodir)

" End: Backups and undo}}}

" Theme and style {{{

syntax enable                       " enable the syntax highlight
set background=dark                 " set a dark background
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
set t_Co=256                        " 256 colors for the terminal
colorscheme jellybeans

" End: Theme and style }}}

" Searching {{{

set hlsearch                    " highlight search results
set ignorecase                  " ignore case letters
set incsearch                   " incremental searching
set showmatch                   " show pairs match
set smartcase                   " smart case ignore

" }}}

" Wildmenu {{{

set wildmenu                        " Command line autocompletion
set wildmode=list:longest,full      " Shows all the options

set wildignore+=*.sw?                            " Vim swap files
set wildignore+=*.bak,*.?~,*.??~,*.???~,*.~      " Backup files
set wildignore+=*.luac                           " Lua byte code
set wildignore+=*.jar                            " java archives
set wildignore+=*.pyc                            " Python byte code

" }}}

" Tabs, space and wrapping {{{

set autoindent                 " set on the auto-indent
set smartindent                " XXX: Python indent o () problems?
set expandtab                  " spaces instead of tabs
set shiftwidth=4               " number of spaces for auto-indent
set softtabstop=4              " a soft-tab of four spaces
set tabstop=4                  " a tab = four spaces

"set formatoptions=qrn1ct       " XXX: Try this
set textwidth=120
set colorcolumn=121

" }}}

" Mappings {{{

" Fast windows moves {{{

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" }}}

" Save as root
cmap w!! w !sudo tee % >/dev/null<CR>:e!<CR><CR>

" Quick saving. XXX: Did I use it?
nnoremap <silent><Leader>w :update<CR>

" Sanitize
nnoremap <Leader>s :%s/\s\+$//<CR>

" Make j and k keys works as usual with wrapping
nnoremap j gj
nnoremap k gk

" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Toggle the search results highlighting
map <silent><Leader>cl :set invhlsearch<CR>

" Avoid Command-line window with q:. Use CTRL-F on command-line input instead
nnoremap q: :q

" Sort selected
vnoremap <Leader>s :sort!<CR>

" }}}

" Folding. XXX: See it {{{
" End: Folding }}}

" Copy, cut and paste {{{

set clipboard=unnamedplus,unnamed         " + register by default. XXX: Unix
map <Leader>p :set invpaste<CR>

" End: Copy, cut and paste }}}

" Spelling. XXX: See it {{{

" turn on the spell checking and set the Spanish language
" nmap <Leader>ss :setlocal spell spelllang=es<CR>
" " turn on the spell checking and set the English language
" nmap <Leader>se :setlocal spell spelllang=en<CR>
" " turn off the spell checking
" nmap <Leader>so :setlocal nospell <CR>
" " jump to the next bad spell word
" nmap <Leader>sn ]s
" " suggest words
" nmap <Leader>sp z=
" " jump to the next bad spell word and suggests a correct one
" nmap <Leader>sc ]sz=
" " add word to the dictionary
" nmap <Leader>sa zg
" }}}

" End: VIM core }}}

" PLUGINS setup {{{

" Unite. XXX: See it {{{

" End: Unite }}}

" Ctrl-p {{{

" Unite substitute not works as expected: https://gist.github.com/copitux/6434354

let g:ctrlp_map = '<leader><leader>'
let g:ctrlp_match_window_reversed = 0
let g:ctrlp_working_path_mode = 0
let g:ctrlp_custom_ignore = {
    \ 'dir':  '\v[\/]\.(git|hg|svn)$',
    \ 'file': '\v\.(pyc|exe|so|dll)$',
    \ }
let g:ctrlp_max_depth = 10

" End: Ctrl-p }}}

" Airline {{{

set ttimeoutlen=0        "  toggle between modes almost instantly

let g:airline_powerline_fonts=1

" End: Airline }}}

" Syntastic {{{

let g:syntastic_python_checkers = ['flake8']
let g:syntastic_error_symbol='✗'
let g:syntastic_style_error_symbol  = '⚡'
let g:syntastic_style_warning_symbol  = '⚡'
let g:syntastic_warning_symbol='⚠'

" End: Syntastic }}}

" Commentary {{{

nmap <Leader>c gcc
xmap <Leader>c gc

augroup plugin_commentary
    au!
    au FileType python setlocal commentstring=#%s
    au FileType htmldjango setlocal commentstring={#\ %s\ #}
    au FileType puppet setlocal commentstring=#\ %s
augroup END

" }}}

" Neocomplete {{{

" let g:neocomplete#enable_at_startup = 1
" let g:neocomplete#enable_smart_case = 1
" let g:neocomplete#enable_auto_select = 1
" let g:neocomplete#enable_refresh_always = 1
" let g:neocomplete#max_list = 30
" let g:neocomplete#min_keyword_length = 2
" let g:neocomplete#sources#syntax#min_keyword_length = 1
" let g:neocomplete#data_directory = $HOME.'/.vim/tmp/neocomplete'

" Enable omni completion. XXX: See it
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

" }}}

" Zoomwintab {{{

map <Leader>z :ZoomWinTabToggle<CR>

" End: Zoomwintab }}}

" End: PLUGINS setup }}}

" FILETYPES {{{

so $HOME/.vim/file_types/html.vim
so $HOME/.vim/file_types/python.vim
so $HOME/.vim/file_types/vim.vim

" End: FILETYPES }}}

" vim:foldmethod=marker
" vim:foldlevel=0
