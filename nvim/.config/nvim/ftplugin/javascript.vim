" Colorscheme
setlocal background=dark
colorscheme gruvbox

" Setting for Indenting Files
setlocal autoindent
"setlocal smartindent
setlocal tabstop=2
setlocal shiftwidth=2
setlocal noexpandtab

" Settings for line numbers and max line width
setlocal nu rnu
setlocal wrapmargin=2
setlocal textwidth=0
setlocal showmatch
setlocal wrap

" Settings for Search
setlocal hlsearch
setlocal incsearch
setlocal ignorecase
setlocal smartcase

"Enable code folding
setlocal foldmethod=indent
setlocal foldlevel=99
" enable folding with the spacebar
noremap <space> za

" ALE Settings
"let g:ale_completion_tsserver_autoimport = 1
let b:ale_linters = ['eslint']
let b:ale_fixers = ['prettier', 'eslint']
