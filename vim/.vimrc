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
    Plug 'itchyny/lightline.vim'
    Plug 'maximbaz/lightline-ale'
        set laststatus=2
        set noshowmode
    Plug 'arcticicestudio/nord-vim'
      let g:nord_italic=1
      let g:nord_italic_comments=1
      let g:nord_cursor_line_number_background=1
      let g:nord_uniform_diff_background=1
    Plug 'morhetz/gruvbox'
        let g:gruvbox_italics=1
        let g:gruvbox_contrast_light="hard"
    Plug 'dylanaraps/wal.vim'
    Plug 'xolox/vim-reload'
    Plug 'xolox/vim-misc'
    Plug 'kien/rainbow_parentheses.vim'
        au VimEnter * RainbowParenthesesToggle
        au Syntax * RainbowParenthesesLoadRound
        au Syntax * RainbowParenthesesLoadSquare
        au Syntax * RainbowParenthesesLoadBraces
    Plug 'ervandew/supertab'
        let g:SuperTabDefaultCompletionType = '<C-n>'
    Plug 'sirver/ultisnips'
        let g:UltiSnipsExpandTrigger = "<tab>"
        let g:UltiSnipsJumpForwardTrigger = "<tab>"
        let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"
    Plug 'honza/vim-snippets'
    Plug 'Shougo/deoplete.nvim', {'do': ':UpdateRemotePlugins'}
        let g:deoplete#enable_at_startup = 1
    Plug 'zchee/deoplete-jedi', {'for': 'python'}
    Plug 'w0rp/ale'
        let g:ale_sign_error = '>>'
        let g:ale_sign_warning = '--'
        let g:ale_sign_column_always = 1
        let g:airline#extensions#ale#enabled = 1
        let g:ale_lint_on_text_changed = 'normal' " 'normal'/'never'
        let g:ale_lint_on_enter = 1
        let g:ale_lint_on_save = 1
        let g:ale_fix_on_save = 1
        nmap ]a <ESC>:ALENextWrap<CR>
        nmap [a <ESC>:ALEPreviousWrap<CR>
        xmap ]a <ESC>:ALENextWrap<CR>
        xmap [a <ESC>:ALEPreviousWrap<CR>
        let g:ale_linters = {'python': ['flake8'], 'tex': ['alex', 'chktex', 'lacheck', 'vale', 'write-good --checks=schreib-gut'], 'rust': ['cargo', 'rustc'], 'text': ['alex', 'vale', 'write-good'], 'markdown': ['alex', 'vale', 'write-good'], 'gitcommit': ['write-good', 'vale', 'gitlint']}
        let g:ale_python_flake8_options = '--select=N,F,H,D,R, --ignore=D100'
        let g:ale_fixers = {'python': ['yapf'], 'rust': ['rustfmt']}
        let g:ale_linters_explicit = 1
        let g:ale_set_loclist = 1
        let g:ale_set_quickfix = 0
        let g:ale_echo_msg_info_str = "I"
        let g:ale_echo_msg_warning_str = "W"
        let g:ale_echo_msg_error_str = "E"
        let g:ale_echo_msg_format = '[%linter%, %severity%] %s'
    Plug 'lervag/vimtex', {'for': 'tex'}
        let g:vimtex_compiler_progname = 'nvr'
        let g:vimtex_view_mode='zathura'
        let g:vimtex_view_method='zathura'
        let g:vimtex_viewer_general='zathura'
        let g:vimtex_compiler_latexmk = {'build_dir': 'build'}
        let g:vimtex_fold_enabled = 0
        let g:vimtex_view_automatic = 0
        let g:tex_flavor = 'latex'
        let g:vimtex_quickfix_mode = 0
        let g:vimtex_complete_close_braces = 1
        let g:vimtex_complete_recursive_bib = 1
        autocmd BufReadPre *.tex let b:vimtex_main = 'main.tex'
    Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
    Plug 'noahhdf/siunitx-conceal.vim', {'for': 'tex'}
    Plug '907th/vim-auto-save'
        let g:auto_save_events = ['InsertLeave', 'TextChanged']
        let g:auto_save = 1
        let g:auto_save_silent = 1
    Plug 'scrooloose/nerdtree'
    Plug 'jistr/vim-nerdtree-tabs'
        map <Leader>\ <plug>NERDTreeTabsToggle<CR>
    Plug 'tpope/vim-fugitive'
    Plug 'junegunn/vim-easy-align'
        nmap ga <Plug>(EasyAlign)
        xmap ga <Plug>(EasyAlign)
    Plug 'Raimondi/delimitMate'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-commentary'
    Plug 'tpope/vim-dispatch'
    Plug 'ntpeters/vim-better-whitespace'
        let g:strip_whitespace_on_save = 1
        let g:better_whitespace_enabled = 1
        let g:strip_whitelines_at_eof = 0
        let g:show_spaces_that_precede_tabs = 1
    Plug 'kshenoy/vim-signature'
    Plug 'airblade/vim-gitgutter'
    Plug 'rust-lang/rust.vim', {'for': 'rust'}
    Plug 'cespare/vim-toml', {'for': 'toml'}
    Plug 'sedm0784/vim-you-autocorrect'
    Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
       let g:vim_markdown_folding_disabled=1
        function! BuildComposer(info)
          if a:info.status != 'unchanged' || a:info.force
            if has('nvim')
              !cargo build --release
            else
              !cargo build --release --no-default-features --features json-rpc
            endif
          endif
        endfunction
    Plug 'euclio/vim-markdown-composer', { 'do': function('BuildComposer') }
        let g:markdown_composer_browser = 'surf'
        let g:markdown_composer_autostart = 0
    Plug 'vim-scripts/vim-on-write'
call plug#end()

let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
    \   'left': [['mode', 'paste'],
    \            ['gitbranch'],
    \            ['readonly', 'filename', 'modified'],
    \           ],
    \   'right': [['linter_checking', 'linter_errors', 'linter_warnings'],
    \             ['lineinfo', 'wordinfo'],
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


" -------------------------     color scheme     ---------------------------- "

syntax enable
set background=light
colorscheme nord
syntax on
let g:limelight_conceal_ctermfg = '8'
highlight Pmenu guibg=#FFFFFF ctermbg=7 guifg=#000000 ctermfg=0


" -------------------------     basic vim stuff     ------------------------- "

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

" set mouse=  " no mouse use

set cole=0

set cursorline
" highlight CursorLine cterm=underline ctermbg=none ctermfg=none
highlight SpellBad ctermfg=red cterm=bold ctermbg=none
highlight Visual cterm=bold
highlight Conceal cterm=none ctermbg=none ctermfg=none


" -------------------------  advanced vim stuff     ------------------------- "
function! ReMake()
  if &mod == 1
    :w
    :Dispatch
  else
    :Dispatch
  endif
endfunction

function! NewFile()
  set fo+=a
endfunction


" -------------------------     key-remapping     --------------------------- "

nnoremap gF <C-w>gf
nnoremap <LEADER>m :call ReMake()<CR>
" nnoremap j gj
" nnoremap k gk
inoremap jk <ESC>
inoremap jjk <ESC>:w<CR>
nnoremap ;w :w<CR>
nnoremap F :%s/
nnoremap f /
vnoremap n <ESC>
inoremap <C-J> <C-N>
inoremap <C-K> <C-P>
nnoremap <C-J> <C-W>j
nnoremap <C-H> <C-W>h
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
nnoremap <TAB> gt
nnoremap <S-TAB> gT
nnoremap <SPACE> @q
let @q=''
vnoremap <C-y> "+y
nnoremap <C-y> "+y
nnoremap <C-p> "+p


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
\   set spelllang=de                                                  |
\   set spell                                                         |
\   set spellfile=~/.config/nvim/spell/de.utf-8.add                   |
\   set spellfile+=~/.config/nvim/spell/physics.add                   |
\   set spellfile+=~/.config/nvim/spell/en.utf-8.add                  |
\   set fo=nt1                                                        |
\   let g:tex_conceal="amgb"                                          |
\   set cole=2                                                        |
\   ab zb zum Beispiel                                                |
\   ab vll vielleicht                                                 |
\   ab ** \cdot

" r
au BufNewFile,BufRead *.R set ft=r
autocmd FileType r
\   inoremap _ <- |
\   inoremap __ _

" python
autocmd Filetype python
\   noremap <buffer> <F5> :!python %<CR>       |
\   noremap <buffer> <F6> :silent !black %<CR> |
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
\   set cole=2

" rust
autocmd Filetype rust
\   let b:dispatch = 'cargo run'

" html
autocmd Filetype html
\ set shiftwidth=2
