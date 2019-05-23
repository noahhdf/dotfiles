noremap <buffer> <F5> :!python %<CR>
noremap <buffer> <F6> :silent !black %<CR>

let b:dispatch = 'python %'

let g:ale_linters = {'python': ['flake8', 'pydocstyle']}
let g:ale_python_flake8_options = '--select=N,F,H,D,R, --ignore=D100 --ignore=E501'
let g:ale_python_pydocstyle_options = '--ignore=D100,D211,D213,D301'
let g:ale_fixers = {'python': ['black']}
" let g:ale_python_black_options = '--line-length 79'


fu! Noblack()
    let g:ale_fix_on_save=0
endfu!
