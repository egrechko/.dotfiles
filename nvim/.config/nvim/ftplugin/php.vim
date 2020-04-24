" Colorscheme
setlocal background=dark
colorscheme OceanicNext
"colorscheme gruvbox

" Emmet Settings
"EmmetInstall
"imap <tab> <plug>(emmet-expand-abbr)
"let g:user_emmet_expandabbr_key='<tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Setting for Indenting Files
setlocal autoindent
setlocal smartindent
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

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

setlocal foldmethod=indent
setlocal foldlevel=99
" enable folding with the spacebar
noremap <space> za
