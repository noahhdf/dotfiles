" -------------------------     plugins     --------------------------------- "
" airline
set laststatus=2
let g:airline_powerline_fonts = 0
"
" make ycm compatible with ultisnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'
"
" better key bindings for ultisnipsexpandtrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
"
" nerdtreetabs
map <Leader>\ <plug>NERDTreeTabsToggle<CR>
"
" ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '--'
highlight clear ALEErrorSign
highlight clear ALEWarningSign
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'normal' " or 'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
"
" easyalign
xmap ga <Plug>(EasyAlign)
nmap ga <Plug>(EasyAlign)
"
