if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

let g:ale_linters = {'tex': ['chktex', 'lacheck', 'write-good --checks=schreib-gut', 'alex']}
let g:ale_tex_chktex_options = '-eall -n22 -n30'
let g:ale_tex_alex_executable = {'alex': 'alexjs'}
let b:indentLine_enabled = 0
