" -------------------------     filetype specific     ----------------------- "
" latex
au BufNewFile,BufRead *.tex set ft=tex
autocmd Filetype tex
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set softtabstop=2 |
    \ set expandtab |
    \ set textwidth=99
"
" r
" augroup R_settings
au BufNewFile,BufRead *.R set ft=r
autocmd FileType r
    \ inoremap _ <- |
    \ inoremap __ _
" augroup END
"
" python
autocmd Filetype python
    \ let b:delimitMate_quotes = "'" |
    \ noremap <buffer> <F6> :call Autopep8()<CR>

