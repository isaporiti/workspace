set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'blueshirts/darcula'

Plugin 'easymotion/vim-easymotion'

Plugin 'kien/ctrlp.vim'

Plugin 'prabirshrestha/vim-lsp'

Plugin 'mattn/vim-lsp-settings'

Plugin 'prabirshrestha/asyncomplete.vim'

Plugin 'prabirshrestha/asyncomplete-lsp.vim'

"Status bar
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

"Git integration
Plugin 'tpope/vim-fugitive'

" NERDTree
Plugin 'scrooloose/nerdtree'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"---- Search configurations ----
"Incremental search enabled
set incsearch

"---- Key bindings ----
"Set leader key to comma
let mapleader=","

"Highlight matches as we type
set hlsearch

"Ignore case for searches
set ignorecase

set nocompatible
set nowrap
set number
set tabstop=4
set shiftwidth=4
set expandtab
set noswapfile

"Set the status bar to appear
set laststatus=2

"Since the status bar will provide the mode, it is not necessary to display it
"anymore.
set noshowmode

" Load filetype-specific indent files
filetype indent on

"Add autocompletion using tab for commands.
set wildmenu

" Ignore directories
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux

" Enables syntax highlighting
syntax on

colorscheme darcula

" Airline theme
let g:airline_theme='minimalist'

"This will cause all splits to happen below (including terminal)
set splitbelow
set termwinsize=10x0

"---- CtrlP config ----
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = '0'

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|hg|svn)|node_modules|bin$',
  \ 'file': '\v\.(exe|so|dll)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

"---- NERDTree Configuration -----
let NERDTreeShowHidden=1

noremap <leader>f :NERDTreeToggle<CR>

let g:lsp_diagnostics_echo_cursor = 1
