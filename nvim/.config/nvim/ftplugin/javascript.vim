" Colorscheme
setlocal background=dark
colorscheme gruvbox

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


" coc.nvim config
"inoremap <expr> <ALT+j> pumvisible() ? "\<C-n>" : "\,"
"inoremap <expr> <ALT+k> pumvisible() ? "\<C-n>" : "\,"

"Enable code folding
setlocal foldmethod=indent
setlocal foldlevel=99
" enable folding with the spacebar
noremap <space> za
