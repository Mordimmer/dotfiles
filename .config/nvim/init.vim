set number
set relativenumber
set noshowmode
set scrolloff=5


call plug#begin()
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" NERDTree
Plug 'https://github.com/preservim/nerdtree'
" Keybindings fo nerd tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" If neovim is opend without file lunch nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

map <C-o> :NERDTreeToggle<CR>
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Plug 'https://github.com/tree-sitter/tree-sitter'
"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Status bar
Plug 'https://github.com/itchyny/lightline.vim'
" Change colorscheme
let g:lightline = {
			\ 'colorscheme': 'one'
			\}

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Multiple cursors
" TODO
" Ctrl+N in normal mode to select words
" Ctrl+Up/Ctrl+Down create new cursors
" [/] change cursor
Plug 'https://github.com/mg979/vim-visual-multi'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Fuzzy finder
" :Files [PATH]
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Add some unix commands
" :Delete - remove file on disk
" :Move :Copy :Rename :Duplicate - TODO
" :Chmod - change permissions
" :Mkdir - create a directory, defaulting to the parent of the currnet file
Plug 'https://github.com/tpope/vim-eunuch'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Change surround
" cs '[ - changes ' to [ 
" cs'<p> - changes ' to <p> 'Hello world!' to <p>Hello world!</p>
" cst' - changes tag to ' <p>Hello world!</p> to 'Hello world!'
" etc
Plug 'https://github.com/tpope/vim-surround'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" HTML, CSS and JS completion tool
" In normal mode Ctrl+Y 
" More info on https://www.emmet.io/
Plug 'https://github.com/mattn/emmet-vim'

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" ALE - syntax checking
Plug 'https://github.com/dense-analysis/ale'
let b:ale_linters = ['pyflakes', 'flake8', 'pylint']
let b:ale_fixers = ['eslint']
let b:ale_fix_on_save = 1

"%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
" Markdown syntax highlighting
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
call plug#end()
