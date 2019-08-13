let g:lightline = {
\   'colorscheme': 'nord',
\   'active': {
    \   'left': [['mode', 'paste'],
    \            ['gitbranch'],
    \            ['readonly', 'filename', 'modified'],
    \           ],
    \   'right': [['linter_checking', 'linter_errors', 'linter_warnings'],
    \             ['percent', 'lineinfo', 'wordinfo'],
    \             ['spell', 'fileencoding', 'filetype'],
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
