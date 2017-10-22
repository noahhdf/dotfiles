" -------------------------     autoload    --------------------------------- "
" load vim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif
" load nvim-plug
if empty(glob("~/.vim/autoload/plug.vim"))
    execute '!curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

" -------------------------     plug     ------------------------------------ "
call plug#begin('~/.vim/plugged')
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'arcticicestudio/nord-vim'
    Plug 'dylanaraps/wal.vim'
    "
    Plug 'ervandew/supertab'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'w0rp/ale'
    "
    " Plug 'LaTeX-Box-Team/LaTeX-Box', {'for': 'tex'}
    Plug 'lervag/vimtex', {'for': 'tex'}
    " Plug 'tell-k/vim-autopep8', {'for': 'python'}
    " Plug 'davidhalter/jedi-vim', {'for': 'python'}
    " Plug 'nvie/vim-flake8', {'for': 'python'}
    "
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tpope/vim-fugitive'
    "
    Plug 'junegunn/vim-easy-align'
    Plug 'Raimondi/delimitMate'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'severin-lemaignan/vim-minimap'
    " Plug 'Yggdroot/indentLine'
    "
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-dispatch'
    "
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/limelight.vim'
    "
    Plug 'ntpeters/vim-better-whitespace'
    "
    Plug 'kshenoy/vim-signature'
call plug#end()

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
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'normal' " 'normal'/'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
nmap ]a <ESC>:ALENext<CR>
nmap [a <ESC>:ALEPrevious<CR>
xmap ]a <ESC>:ALENext<CR>
xmap [a <ESC>:ALEPrevious<CR>
let g:ale_lint_delay=200
let g:ale_fixers = {
\ 'python': ['autopep8'],
\}
let g:ale_linters = {
\ 'python': ['pycodestyle'],
\}
" let g:ale_fix_on_save=1
"
" easyalign
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
"
" goyo and limelight
let g:goyo_width = 120
let g:goyo_height = 85
nmap gl <ESC>:Limelight!!<CR>
xmap gl <ESC>:Limelight!!<CR>
nmap go <ESC>:Goyo<CR>
xmap go <ESC>:Goyo<CR>

" -------------------------     color scheme     ---------------------------- "
syntax enable
set background=dark
colorscheme nord
syntax on
" let g:airline_theme = 'nord'
let g:limelight_conceal_ctermfg = '8'
" let g:limelight_conceal_guifg = '#4C566A'

" -------------------------     basic vim stuff     ------------------------- "
filetype plugin on
set modeline
set modelines=1
"
set encoding=utf-8
set fileencoding=utf-8
"
set nu
set relativenumber
set scrolloff=3
"
set ignorecase
set smartcase
set gdefault
set incsearch
set backspace=indent,eol,start
set list
set listchars=tab:>-,trail:~
"
set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
"
set wrap
set textwidth=79
set colorcolumn=+1
set formatoptions=qrn1
"
set mouse=  " no mouse use
"
set cole=0

" -------------------------     key-remapping     --------------------------- "
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
nnoremap F :%s/
nnoremap f /
vnoremap n <ESC>
inoremap <C-J> <C-N>
inoremap <C-K> <C-P>
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <C-W><TAB> :tabn<CR>
nnoremap <C-W><S-TAB> :tabN<CR>

" -------------------------     filetype specific     ----------------------- "
" latex
au BufNewFile,BufRead *.tex set ft=tex
autocmd Filetype tex
    \ set tabstop=2 |
    \ set shiftwidth=2 |
    \ set softtabstop=2 |
    \ set expandtab |
    \ set conceallevel=0 |
    \ ab zb zum Beispiel|
    \ ab vll vielleicht |
    \ set spelllang=de |
    \ set spell
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
    \ noremap <buffer> <F6> :ALEFix<CR> |
    \ autocmd BufEnter <buffer> EnableStripWhitespaceOnSave
"
" git commit message
autocmd Filetype gitcommit
    \ set spelllang=en |
    \ set spell |
    \ set tw=50 |
    \ set fo=want
