autocmd FileType vim set softtabstop=2 tabstop=2 shiftwidth=2

au BufRead,BufNewFile */templates/*.html setlocal filetype=htmldjango.html
let g:surround_{char2nr("b")} = "{% block\1 \r..*\r &\1 %}\r{% endblock %}"
let g:surround_{char2nr("i")} = "{% if\1 \r..*\r &\1 %}\r{% endif %}"
let g:surround_{char2nr("w")} = "{% with\1 \r..*\r &\1 %}\r{% endwith %}"
let g:surround_{char2nr("c")} = "{% comment\1 \r..*\r &\1 %}\r{% endcomment %}"
let g:surround_{char2nr("f")} = "{% for\1 \r..*\r &\1 %}\r{% endfor %}"
let g:surround_{char2nr("v")} = "{{ \1 \r..*\r &\1\r }}"
" XXX: Todo trans and blocktrans
