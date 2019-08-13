let b:dispatch = 'cargo run'

let g:ale_linters = {'rust': ['cargo', 'rustc']}
let g:ale_fixers = {'rust': ['rustfmt']}
