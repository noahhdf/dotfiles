" PERSONAL VIMRC STYLEGUIDE
" DELIMITERS END ON COLUMN 79
" HEADLINES START AT COLUMN 33
" 5 COMMENTED BLANK LINES AFTER A SECTION
" UNCOMMENTET BLANK LINES BETWEEN CALLS
" COMMENTS UPPERCASE
"
"
"
"
"
" ########################################################################### "
"                               PLUG BEGIN
" ########################################################################### "
" LOAD VIM PLUG
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
call plug#begin('~/.vim/plugged')

" PLUGINS HERE
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'vim-syntastic/syntastic', {'for': 'python'}
"
" Plug 'valloric/youcompleteme', { 'do': './install.py'} ", 'for': 'python'}
Plug 'sirver/ultisnips'
Plug 'honza/vim-snippets'
Plug 'ervandew/supertab'
" Plug 'tell-k/vim-autopep8', {'for': 'python'}
" Plug 'sheerun/vim-polyglot'
Plug 'LaTeX-Box-Team/LaTeX-Box', {'for': 'tex'}
Plug 'davidhalter/jedi-vim', {'for': 'python'}
Plug 'w0rp/ale'
Plug 'nvie/vim-flake8', {'for': 'python'}
"
Plug 'scrooloose/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'Xuyuanp/nerdtree-git-plugin'
"
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()
"                               PLUG END
" ########################################################################### "
"
"
"
"
"
" ########################################################################### "
"                               BASIC VIM STUFF
" ########################################################################### "
filetype plugin on
set modelines=0

set encoding=utf-8
set fileencoding=utf-8

set nu "ZEILENNUMMERN
set relativenumber
set scrolloff=2

" FIND&REPLACE
set ignorecase
set smartcase
set gdefault
set incsearch
set backspace=indent,eol,start

" AUTO-EINRÜCKEN
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set wrap
set textwidth=79
set colorcolumn=+1
set formatoptions=qrn1

set mouse=  " no mouse use


" set undofile
"
"
"
"
"
" ########################################################################### "
"                               KEY-REMAPPING
" ########################################################################### "
nnoremap H 0
vnoremap H 0
nnoremap dH d0
vnoremap dH d0
nnoremap cH c0
vnoremap cH c0
nnoremap L $
vnoremap L $
nnoremap dL d$
vnoremap dL d$
nnoremap cL c$
vnoremap cL c$
inoremap jj <ESC>
" inoremap ww <ESC>:w<CR>
" nnoremap zz ZZ
" inoremap zzz <ESC>ZZ
" nnoremap qq :q<CR>
" nnoremap <TAB> %
" vnoremap <TAB> %
" nnoremap , <Leader>
" vnoremap , <Leader>
nnoremap F :%s/
nnoremap f /
" inoremap <CTRL><RIGHT> <ESC>wi
" inoremap <CTRL><LEFT> <ESC>bi
" inoremap <C-K> <ESC>b<C-V>UA
nnoremap <C-K> b<C-V>U
nnoremap <C-U> VU
inoremap <C-U> VU
vnoremap n <ESC>
"
inoremap <C-J> <C-N>
inoremap <C-K> <C-P>
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
" LOOK AT THIS
nnoremap <C-W><TAB> :tabn<CR>
"
"
"
"
"
" ########################################################################### "
"                               CUSTOM COLOR-SCHEME
" ########################################################################### "
syntax enable
set background=dark
colorscheme nord
" colorscheme solarized
syntax on
"
"
"
"
"
" ########################################################################### "
"                               FILE-SPECIFIC ABBREVIATIONS 
" ########################################################################### "
" LATEX SETTINGS
augroup tex_settings
    au BufNewFile,BufRead *.tex set ft=tex 
    " autocmd FileType tex ab eq \begin{equation}jjo\end{equation}jjO
    " autocmd FileType tex ab al \begin{align}jjo\end{align}jjO
    " autocmd FileType tex ab ( \left(\right)jj6hi
    " " ]) 'THIS LINE IS JUST FOR HIGHLIGHTING PURPOSES'
    " autocmd FileType tex ab [ \left[\right]jj6hi
    " autocmd FileType tex ab sub \subsection{}jji
    " autocmd FileType tex ab table \begin{table}<CR>\centering<CR>\caption{}<CR>\label{tab:}<CR>\sisetup{table-format=1.0}<CR>\begin{tabular}{S S}<CR>\toprule<CR>\midrule<CR>\bottomrule<CR>\end{tabular}<CR>\end{table}jjH8k3wa
    " autocmd FileType tex ab figure \begin{figure}<CR>\centering<CR>\includegraphics[width=0.8\textwidth]{}<CR>\caption{}<CR>\label{fig:}<CR>\end{figure}jj4k3w%la
    autocmd Filetype tex set tabstop=2
    autocmd Filetype tex set shiftwidth=2
    autocmd Filetype tex set softtabstop=2
	autocmd FileType tex set expandtab
augroup END

" R SETTINGS
augroup R_settings
    au BufNewFile,BufRead *.R set ft=r
    autocmd FileType r inoremap _ <-
    autocmd FileType r inoremap __ _
augroup END
"
"
"
"
"
" ########################################################################### "
"                               PLUGINS
" ########################################################################### "
"

" SYNTASTIC
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 0
" let g:syntastic_auto_loc_list = 0
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" AIRLINE
set laststatus=2
let g:airline_powerline_fonts = 0
let g:airline_theme = 'nord'

" AUTOPEP8
autocmd Filetype python noremap <buffer> <F6> :call Autopep8()<CR>

" MAKE YCM COMPATIBLE WITH ULTISNIPS (USING SUPERTAB)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" BETTER KEY BINDINGS FOR ULTISNIPSEXPANDTRIGGER
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" NERDTREETABS
map <Leader>\ <plug>NERDTreeTabsToggle<CR>

" LATEX-BOX
let g:LatexBox_build_dir=".build"
let g:LatexBox_split_type="new"
autocmd FileType tex noremap <buffer> <F6> :LatexTOCToggle<CR>
"
"
"
"
"
