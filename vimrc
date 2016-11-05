" Joe Whitfield-Seed's .vimrc
" Evolved from https://gist.github.com/benmccormick/4e4bc44d8135cfc43fc3 

" ######################################
" # Vundle
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

" #################
" # Plugins

" # Files

" Fuzzy file finding
Plugin 'kien/ctrlp.vim'

" Git integration
Plugin 'tpope/vim-fugitive'

" # Code

" Syntax highlighting
Plugin 'scrooloose/syntastic'

" JS code analysis
Plugin 'ternjs/tern_for_vim'

" Better JS syntax
Plugin 'pangloss/vim-javascript'

" Code completion
Plugin 'Valloric/YouCompleteMe'

" Insert/delete quote/bracket pairs
Plugin 'jiangmiao/auto-pairs'

" Color schemes
Plugin 'altercation/vim-colors-solarized'
" Plugin 'tomasr/molokai'
Plugin 'crusoexia/vim-monokai'

" UI
" Fancy status line
Plugin 'bling/vim-airline'

" Code search with ack
Plugin 'mileszs/ack.vim'

" File manager
Plugin 'scrooloose/nerdtree'

" Syntax
Plugin 'lambdatoast/elm.vim'
Plugin 'vim-scripts/VimClojure'
Plugin 'alunny/pegjs-vim'
Plugin 'andreimaxim/vim-io'
Plugin 'adimit/prolog.vim'

""""""" Trying out

" Auto-indent on paste
" Plugin 'ConradIrwin/vim-bracketed-paster'

" # End plugins
" #################

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" #####################################
" # Basic setup

" Use vim (not vi) settings
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" use relative line numbers
set relativenumber

" Show the cursor line
set cursorline

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Remember more commands
set history=100

" Show cursor position
set ruler

" Allow background buffers
set hidden

" Find patterns
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/node_modules/*

" Set pwd to the current file's director
set autochdir

" No bell!
set vb

" Status line
" #####################################
" # Keybindings

" \rr to re-source .vimrc
map <leader>rr :source ~/.vimrc<CR>

" ctrl-N for NERDTree
map <C-n> :NERDTreeToggle<CR>

" #####################################
" # Appearance
syntax on
syntax enable
set laststatus=2	" Always show status bar

if has('gui_running')
    colorscheme monokai
    set background=dark
else
    colorscheme monokai
    set background=dark
endif

set guifont=Source\ Code\ Pro\ For\ Powerline
" set guifont=Inconsolata\ For\ Powerline:h13


" #####################################
" # Indentation - 2 spaces
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" #######################################
" # Plugin options

" CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|tmp'


" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_javascript_checkers = ['eslint']

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
