nnoremap <LEADER>m :call ReMake()<CR>

inoremap jk <ESC>
inoremap jjk <ESC>:w<CR>

nnoremap ;w :w<CR>

vnoremap n <ESC>


" change completions
inoremap <C-J> <C-N>
inoremap <C-K> <C-P>

" navigating windows
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <TAB> gt
nnoremap <S-TAB> gT

" navigating file buffers
nnoremap gF <C-w>gf
nnoremap <CR> gf
nnoremap <BACKSPACE> :e#<CR>

" record shortcuts
nnoremap <SPACE> @q
nnoremap <C-SPACE> @k

" copying to clipboard
vnoremap <C-y> "+y
nnoremap <C-y> "+y
nnoremap <C-p> "+p

" verbose undo
nnoremap U <C-r>
