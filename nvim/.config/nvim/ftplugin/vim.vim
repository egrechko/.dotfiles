" Colorscheme
"setlocal background=dark
"colorscheme gruvbox
syntax enable
"colorscheme nord
"let g:lightline = { 'colorscheme': 'OceanicNext', } 	" Change the colorscheme for lightline

" Setting for Indenting Files
setlocal autoindent
"setlocal smartindent " Disabled this because I don't want vim automatically
"changing indent width
setlocal tabstop=4
setlocal shiftwidth=4
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
setlocal nofoldenable
" enable folding with the spacebar
noremap <space> za
