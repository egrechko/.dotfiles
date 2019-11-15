" Settings for Markdown File Types
setlocal autoindent
setlocal colorcolumn=0
setlocal linebreak
setlocal shiftwidth=4
setlocal spell
setlocal tabstop=4
setlocal wrap
setlocal nonumber

" use yaml syntax at the start of Jekyll markdown.
let g:vim_markdown_frontmatter=1
let g:vim_markdown_folding_disabled = 1

" don't press my buttons
"let g:vim_markdown_auto_insert_bullets = 0
let g:vim_markdown_new_list_item_indent = 0

"PencilSoft
"map <buffer> <S-m> :!open -b $(osascript -e 'id of app "Marked 2"') %<CR><CR>

" don't collapse links
setlocal conceallevel=0

au Filetype markdown ALEDisable | Goyo

colorscheme pencil
setlocal background=light
