"pip install rope ropemode ropevim
function! LoadRope()
python << EOF
import ropevim
EOF
endfunction

call LoadRope()
