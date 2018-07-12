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
    " Plug 'vim-airline/vim-airline'
    " Plug 'vim-airline/vim-airline-themes'
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'
    Plug 'arcticicestudio/nord-vim'
    Plug 'dylanaraps/wal.vim'

    Plug 'ervandew/supertab'
    Plug 'sirver/ultisnips'
    Plug 'honza/vim-snippets'
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
    " Plug 'zchee/deoplete-jedi', {'for': 'python'}
    Plug 'w0rp/ale'
    Plug 'ambv/black', {'for': 'python'}

    Plug 'lervag/vimtex', {'for': 'tex'}

    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
    Plug 'tpope/vim-fugitive'

    Plug 'junegunn/vim-easy-align'
    Plug 'Raimondi/delimitMate'
    Plug 'terryma/vim-multiple-cursors'

    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-dispatch'

    " Plug 'junegunn/goyo.vim'
    " Plug 'junegunn/limelight.vim'

    Plug 'ntpeters/vim-better-whitespace'

    Plug 'kshenoy/vim-signature'
    Plug 'airblade/vim-gitgutter'

    Plug 'rust-lang/rust.vim', {'for': 'rust'}
    Plug 'cespare/vim-toml', {'for': 'toml'}

" Vim-markdown
function! BuildComposer(info)
  if a:info.status != 'unchanged' || a:info.force
    if has('nvim')
      !cargo build --release
    else
      !cargo build --release --no-default-features --features json-rpc
    endif
  endif
endfunction

    Plug 'euclio/vim-markdown-composer', {'do': function('BuildComposer')}
call plug#end()


" -------------------------     plugins     --------------------------------- "

" Black
let g:black_fast = 0  " default 0
let g:black_linelength = 79  " default 88
" Run black on save
" autocmd BufWritePost *.py silent execute ':Black'

"  Python support
let g:python3_host_prog = '/home/noah/miniconda3/bin/python'
let g:python_host_prog = '/home/noah/miniconda3/envs/Python2/bin/python'

" Deoplete
let g:deoplete#enable_at_startup = 1

" vimtex
let g:vimtex_compiler_latexmk = {'build_dir': 'build'}
" let g:vimtex_compiler_latexrun = {'options': ['--bibtex-cmd biber']}
let g:vimtex_fold_enabled = 1
let g:vimtex_view_automatic = 1

" lightline / airline
set laststatus=2
set noshowmode
let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
    \   'left': [['mode', 'paste'],
    \            ['gitbranch'],
    \            ['readonly', 'filename', 'modified'],
    \           ],
    \   'right': [['linter_checking', 'linter_errors', 'linter_warnings'],
    \             ['lineinfo'],
    \             ['percent'],
    \             ['fileencoding', 'filetype'],
    \            ],
    \},
\}
let g:lightline.component_expand = {
\   'gitbranch': 'fugitive#head',
\   'linter_checking': 'lightline#ale#checking',
\   'linter_warnings': 'lightline#ale#warnings',
\   'linter_errors': 'lightline#ale#errors',
\}
let g:lightline.component_type = {
\   'linter_checking': 'warning',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error',
\}
let g:airline_powerline_fonts = 1


" ultisnips and supertab
let g:SuperTabDefaultCompletionType = '<C-n>'
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" nerdtreetabs
map <Leader>\ <plug>NERDTreeTabsToggle<CR>

" ale
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '>>'
let g:airline#extensions#ale#enabled = 1
let g:ale_lint_on_text_changed = 'normal' " 'normal'/'never'
let g:ale_lint_on_enter = 1
let g:ale_lint_on_save = 1
nmap ]a <ESC>:ALENext<CR>
nmap [a <ESC>:ALEPrevious<CR>
xmap ]a <ESC>:ALENext<CR>
xmap [a <ESC>:ALEPrevious<CR>
let g:ale_linters = {
\    'python': ['pycodestyle'],
\}

" easyalign
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" goyo and limelight
let g:goyo_width = 120
let g:goyo_height = 85
nmap gl <ESC>:Limelight!!<CR>
xmap gl <ESC>:Limelight!!<CR>
nmap go <ESC>:Goyo<CR>
xmap go <ESC>:Goyo<CR>

" gitgutter
set signcolumn=yes

" markdown composer
let g:markdown_composer_browser = '/usr/bin/surf'
let g:markdown_composer_autostart = 0

" better whitespace
let g:strip_whitespace_on_save = 1
let g:better_whitespace_enabled = 1
let g:strip_whitelines_at_eof = 1
let g:show_spaces_that_precede_tabs = 1


" -------------------------     color scheme     ---------------------------- "

syntax enable
set background=dark
colorscheme nord
syntax on
let g:limelight_conceal_ctermfg = '8'
highlight Pmenu guibg=#FFFFFF ctermbg=7 guifg=#000000 ctermfg=0


" -------------------------     basic vim stuff     ------------------------- "

filetype plugin on
set modeline
set modelines=1

set encoding=utf-8
set fileencoding=utf-8

set nu
set relativenumber
set scrolloff=3

set ignorecase
set smartcase
set gdefault
set incsearch
set backspace=indent,eol,start
set list
set listchars=tab:>-,trail:~

set autoindent
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set textwidth=79
set wrap
let &showbreak=">"
set linebreak
set breakindent
" set colorcolumn=+1
set formatoptions=qrn1

set mouse=  " no mouse use

set cole=0

set cursorline
" highlight CursorLine cterm=underline ctermbg=none ctermfg=none
highlight SpellBad ctermfg=red cterm=bold ctermbg=none
highlight Visual cterm=bold


" -------------------------     key-remapping     --------------------------- "

nnoremap <LEADER>m :Dispatch<CR>
nnoremap <LEADER>M :Make -j<CR>
nnoremap j gj
nnoremap k gk
inoremap jj <ESC>
inoremap jk <ESC>:w<CR>
nnoremap F :%s/
nnoremap f /
vnoremap n <ESC>
inoremap <C-J> <C-N>
inoremap <C-K> <C-P>
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap tt :tabn<CR>
nnoremap TT :tabN<CR>
nnoremap <SPACE> @q
let @q=''
vnoremap <C-y> "+y
nnoremap <C-y> "+y


" -------------------------     filetype specific     ----------------------- "

" latex
au BufNewFile,BufRead *.tex set ft=tex
autocmd Filetype tex
\   if !exists('g:deoplete#omni#input_patterns')                      |
\       let g:deoplete#omni#input_patterns = {}                       |
\   endif                                                             |
\       let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete |
\   noremap <buffer> <F5> \ll                                         |
\   set tabstop=2                                                     |
\   set shiftwidth=2                                                  |
\   set softtabstop=2                                                 |
\   set expandtab                                                     |
\   set conceallevel=0                                                |
\   ab zb zum Beispiel|
\   ab vll vielleicht|
\   ab ** \cdot|
\   set spelllang=de                                                  |
\   set spell |
\   set textwidth=99 |
\   set fo=nt1

" r
au BufNewFile,BufRead *.R set ft=r
autocmd FileType r
\   inoremap _ <- |
\   inoremap __ _

" python
autocmd Filetype python
\   noremap <buffer> <F5> :!python %<CR>                  |
\   noremap <buffer> <F6> :silent !black %<CR>                   |
\   let b:dispatch = 'python %'

" git commit message
autocmd Filetype gitcommit
\   set spelllang=en |
\   set spell        |
\   set tw=50        |
\   set fo=want

" markdown
autocmd Filetype markdown
\   nnoremap U1 yypVr=                       |
\   nnoremap U2 yypVr-                       |
\   noremap <buffer> <F5> :ComposerStart<CR> |
\   set textwidth=99

" rust
autocmd Filetype rust
\   let b:dispatch = 'cargo run'
