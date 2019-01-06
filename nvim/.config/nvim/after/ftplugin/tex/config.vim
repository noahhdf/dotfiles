if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

let g:ale_linters = {'tex': ['chktex', 'lacheck', 'write-good --checks=schreib-gut']}
