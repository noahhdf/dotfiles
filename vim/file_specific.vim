" -------------------------     filetype specific     ----------------------- "
" latex
autocmd Filetype tex set tabstop=2 | set shiftwidth=2 | set softtabstop=2 | set expandtab | set textwidth=99
"
" r
augroup R_settings
    au BufNewFile,BufRead *.R set ft=r
    autocmd FileType r inoremap _ <-| inoremap __ _
augroup END
"
" python
autocmd Filetype python let b:delimitMate_quotes = "'"
autocmd Filetype python noremap <buffer> <F6> :call Autopep8()<CR>
