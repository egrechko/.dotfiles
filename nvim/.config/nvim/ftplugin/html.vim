"augroup EmmetSettings
"  autocmd! FileType html imap <tab> <plug>(emmet-expand-abbr)
"augroup ENDet g:user_emmet_expandabbr_key='<Tab>'

"EmmetInstall
imap <tab> <plug>(emmet-expand-abbr)
let g:user_emmet_expandabbr_key='<tab>'
"imap <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

" Setting for Indenting Files
setlocal autoindent
setlocal smartindent
setlocal tabstop=2
setlocal shiftwidth=2
setlocal expandtab

setlocal wrap
