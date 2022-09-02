" nvim config

" plugins
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}
call plug#end()

" syntax
syntax enable
let python_higlight_all=1

" tabs and indentation
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" commands
set showcmd
set wildmenu

" searching
set incsearch
set ignorecase
set nohlsearch

" gui
set nowrap
set showmatch

" set cursorline
set number
set relativenumber
set colorcolumn=80
set signcolumn=yes
" set linebreak
" set wrap

" motion
set scrolloff=6
nnoremap j gj
nnoremap k gk

" behavior
set hidden
set noerrorbells
set noswapfile
set nobackup

" status line
let g:lightline={'colorscheme':'gruvbox'}

" colors 
colorscheme gruvbox

" non recursive remap
nnoremap <silent> <Space> :NERDTreeToggle<CR>

" enable mousing
set mouse=a

" remove visual, cmd, and normal flag
set noshowmode

" help and options
" :h or :help <thing>
" :options
" :q to close page
" source
" :source init.vim

" plugins
" :PlugInstall
" :PlugClean
" https://github.com/junegunn/vim-plug
