" Colorscheme
setlocal background=dark
"colorscheme gruvbox
"colorscheme molokai
colorscheme OceanicNext

" Tab settings
setlocal autoindent
"setlocal smartindent
setlocal tabstop=4
setlocal shiftwidth=4
setlocal noexpandtab

setlocal wrap
setlocal nu rnu

"let b:ale_linters = ['eslint']
let b:ale_linter_aliases = ['css', 'javascript', 'vls']
let b:ale_fixers = ['prettier', 'eslint']
