autocmd BufNewFile *.py so $HOME/.vim/file_headers/python.txt

autocmd FileType python set colorcolumn=81
autocmd FileType python set filetype=python.django
autocmd FileType python set textwidth=80