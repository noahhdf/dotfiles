" load plugins from separate file
source ~/.config/nvim/plugin/plugins.vim

set splitright
set splitbelow

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

" empty records
let @q=''

" undofiles
let &undodir = expand("~/.config/nvim/undo/")
if empty(glob("~/.config/nvim/undo/"))
    silent execute '!mkdir -p ~/.config/nvim/undo/'
endif
set undofile
