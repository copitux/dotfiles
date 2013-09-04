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

NeoBundle 'Shougo/vimproc', {'build': {'unix': 'make -f make_unix.mak'}}
NeoBundle 'Shougo/unite.vim'			" Unite. The interface to rule almost everything
NeoBundle 'kien/ctrlp.vim'

NeoBundle 'bling/vim-airline'			" Pretty status line
NeoBundle 'nanotech/jellybeans.vim' " color 
NeoBundle 'altercation/vim-colors-solarized'

" End: Plugins }}}

NeoBundleCheck

filetype plugin indent on			" Indent and plugins by filetype

" End: NEOBUNDLE, plugin manager }}}

" VIM core {{{

" <Leader> & <LocalLeader> mapping {{{

let mapleader=','
let maplocalleader= ' '

" }}}

" Basic options {{{

set encoding=utf-8
scriptencoding utf-8                            " setup the encoding to UTF-8
set autoread                   			" update a open file edited outside of Vim
set backspace=indent,eol,start 			" defines the backspace key behavior
set clipboard=unnamedplus                       " + register by default
set guioptions=aegit           			" Hide: toolbar, menu and scrollbars
set hidden                     			" hide the inactive buffers
set laststatus=2             			" status line always visible
set listchars=tab:>-,trail:.,nbsp:.,eol:¬	" Highlight problematic whitespace
set list					" shows hidden chars
set ruler                      			" sets a permanent rule. x, y of cursor
set showcmd					" Show commands near statusline
set title                      			" set the terminal title to the current file
set ttyfast                    			" better screen redraw. XXX: Needed?
set visualbell                 			" turn on the visual bell

" }}}

" Backups and undo {{{

set noswapfile
set nobackup
" XXX set smart undo

" End: Backups and undo}}}

" Theme and style {{{

syntax enable                 			" enable the syntax highlight
set t_Co=256                  			" 256 colors for the terminal
set background=dark           			" set a dark background
colorscheme jellybeans
set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11

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
set expandtab                  " spaces instead of tabs
set shiftwidth=4               " number of spaces for auto-indent
set softtabstop=4              " a soft-tab of four spaces
set tabstop=4                  " a tab = four spaces

" set formatoptions=qrn1ct
set textwidth=80
set colorcolumn=81

function! ToggleWrap()
    let s:nowrap_cc_bg = [22, '#005f00']
    redir => s:curr_cc_hi
    silent hi ColorColumn
    redir END
    let s:curr_cc_ctermbg = matchstr(s:curr_cc_hi, 'ctermbg=\zs.\{-}\s\ze\1')
    let s:curr_cc_guibg = matchstr(s:curr_cc_hi, 'guibg=\zs.\{-}\_$\ze\1')
    if s:curr_cc_ctermbg != s:nowrap_cc_bg[0]
        let g:curr_cc_ctermbg = s:curr_cc_ctermbg
    endif
    if s:curr_cc_guibg != s:nowrap_cc_bg[1]
        let g:curr_cc_guibg = s:curr_cc_guibg
    endif
    if &textwidth == 80
        set textwidth=0
        exec 'hi ColorColumn ctermbg='.s:nowrap_cc_bg[0].
                    \' guibg='.s:nowrap_cc_bg[1]
    elseif &textwidth == 0
        set textwidth=80
        exec 'hi ColorColumn ctermbg='.g:curr_cc_ctermbg.
                    \' guibg='.g:curr_cc_guibg
    endif
endfunction

nmap <silent><Leader>ew :call ToggleWrap()<CR>

" }}}

" End: VIM core }}}

" PLUGINS setup {{{

" Unite {{{

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

set ttimeoutlen=0				"  toggle between modes almost instantly

let g:airline_powerline_fonts = 1

" End: Airline }}}

" End: PLUGINS setup }}}

" vim:foldmethod=marker
" vim:foldlevel=1
