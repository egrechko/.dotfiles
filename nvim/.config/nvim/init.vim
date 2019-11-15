""" Plugins
	call plug#begin()
	
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
	Plug 'sheerun/vim-polyglot' " Syntax Highlighting for over 120 languages
	Plug 'morhetz/gruvbox' " colorscheme
	Plug 'reedes/vim-colors-pencil' " For markdown writing
	Plug 'w0rp/ale' " Lint for Javascript
	"Plug 'mattn/emmet-vim'
	Plug 'scrooloose/nerdtree' " file manager
	Plug 'ctrlpvim/ctrlp.vim' " Fuzzy file finder
	Plug 'tpope/vim-fugitive'
	Plug 'jiangmiao/auto-pairs'
	Plug 'godlygeek/tabular'
	Plug 'plasticboy/vim-markdown'
	Plug 'reedes/vim-pencil'
	Plug 'junegunn/goyo.vim'
	Plug 'ryanoasis/vim-devicons' " Icons in nerdtree
	
	call plug#end()

" Setting encoding to UTF-8
set encoding=UTF-8

" Setting System Clipboard
set clipboard+=unnamedplus

set nocompatible
filetype off
filetype plugin indent on

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

""" Set color scheme for vim
	set termguicolors
	set background=dark
	let g:grovebox_italic=1
	let g:grovebox_contrast_dark='soft'
	colorscheme gruvbox

" Ctrl-P Plugin
	let g:ctrlp_map = '<c-p>'
	let g:ctrlp_cmd = 'CtrlP'
	let g:ctrlp_working_path_mode = 'ra' " sets working directory to currently opened file
	let g:ctrlp_switch_buffer = 'et'
	
	set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
	
	let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
	
	let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard'] " exclude files in .gitignore
