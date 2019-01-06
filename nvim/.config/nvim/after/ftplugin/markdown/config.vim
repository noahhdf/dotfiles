nnoremap U1 yypVr=
nnoremap U2 yypVr-
noremap <buffer> <F5> :ComposerStart<CR>

setlocal conceallevel=2

let g:ale_linters = {'markdown': ['alex', 'vale', 'write-good']}
