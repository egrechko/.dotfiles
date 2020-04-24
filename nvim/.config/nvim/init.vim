""" Plugins 
call plug#begin()
	
"{{ The Basics 💩 }}
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	"Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
	Plug 'itchyny/lightline.vim'
"{{ Syntax Highlighting & Colors 🎨 }}
	Plug 'sheerun/vim-polyglot' " Syntax Highlighting for over 120 languages
	"Plug 'flazz/vim-colorschemes'
	Plug 'arcticicestudio/nord-vim'
	Plug 'mhartington/oceanic-next'
	Plug 'frazrepo/vim-rainbow'
	Plug 'reedes/vim-colors-pencil' " For markdown writing
	Plug 'reedes/vim-pencil'
	Plug 'junegunn/goyo.vim'
"{{ File management 🗄️ }}
	Plug 'francoiscabrol/ranger.vim'
	Plug 'rbgrouleff/bclose.vim'
	Plug 'scrooloose/nerdtree' " file manager (READ DOCUMENTATION)
	Plug 'tiagofumo/vim-nerdtree-syntax-highlight' " nerdtree syntax highlighting for labels
	Plug 'ryanoasis/vim-devicons' " Icons in nerdtree
	Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file finder
"{{ Productivity 🔥 }}
	"Plug 'godlygeek/tabular' " (READ	DOCUMENTATION)
	"Plug 'w0rp/ale' " Lint for Javascript (READ	DOCUMENTATION)
	"Plug 'tpope/vim-fugitive'
	"Plug 'jiangmiao/auto-pairs'
	"Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
	
	call plug#end()

" Setting encoding to UTF-8
set encoding=UTF-8

" Setting System Clipboard
set clipboard+=unnamedplus

set nocompatible
set noshowmode

"filetype on
"filetype plugin indent on
" testing...
"autocmd BufReadPre,BufNewFile * let b:did_ftplugin = 1
filetype plugin on

" Working with Splits
	set splitbelow
	set splitright

" Split Navigation
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>

" NerdTreeToggle Keyboard shortcut
silent! nmap <C-b> :NERDTreeToggle<CR>

""" Disable the stupid bell sound
set belloff=all

"{{ Colorscheme }}
	setlocal nu rnu

	if (has("termguicolors"))
		set termguicolors
	endif

	syntax enable
	colorscheme OceanicNext
	
	let g:rainbow_active = 1 						" have multiple colored pairs for better readability
	let g:lightline = { 'colorscheme': 'one', } 	" Change the colorscheme for lightline

" Ctrl-P Plugin
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_working_path_mode = 'ra' " sets working directory to currently opened file
	let g:ctrlp_switch_buffer = 'et'
	
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	
	"let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
	let g:ctrlp_custom_ignore = '\v[\/](node_modules|target|dist|git)|(\.(swp|ico|git|svn))$'
	
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " exclude files in .gitignore

" Coc Settings
	" TextEdit might fail if hidden is not set.
	set hidden
	
	" Some servers have issues with backup files, see #649.
	set nobackup
	set nowritebackup
	
	" Give more space for displaying messages.
	set cmdheight=2
	
	" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
	" delays and poor user experience.
	set updatetime=300
	
	" Don't pass messages to |ins-completion-menu|.
	set shortmess+=c
	
	" Always show the signcolumn, otherwise it would shift the text each time
	" diagnostics appear/become resolved.
	set signcolumn=yes

	inoremap <silent><expr> <TAB>
		\ pumvisible() ? coc#_select_confirm() :
		\ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
		\ <SID>check_back_space() ? "\<TAB>" :
		\ coc#refresh()

	function! s:check_back_space() abort
		let col = col('.') - 1
		return !col || getline('.')[col - 1]  =~# '\s'
	endfunction
	
	let g:coc_snippet_next = '<tab>'

	inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm() : 
                                           \"\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

	command! -nargs=0 Prettier :CocCommand prettier.formatFile
