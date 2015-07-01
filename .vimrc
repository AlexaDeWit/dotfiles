set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'rust-lang/rust.vim'
Bundle 'tpope/vim-rails'
Bundle 'pangloss/vim-javascript'
Bundle 'briancollins/vim-jst'
Bundle 'elzr/vim-json'
Bundle 'scrooloose/nerdtree'
Bundle 'tpope/vim-sensible'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-speeddating'
Bundle 'altercation/vim-colors-solarized'
Bundle 'bling/vim-airline'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
Bundle 'airblade/vim-gitgutter'
Bundle 'Yggdroot/indentLine'
Bundle 'yaymukund/vim-rabl'
Bundle 'derekwyatt/vim-scala'
Bundle 'gre/play2vim'
Bundle 'othree/html5.vim'


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"enable omni complete
set omnifunc=syntaxcomplete#Complete


"Configuration Begins
syntax on
set cc=80
set shiftwidth=4
set expandtab
set smartindent
set smarttab
set softtabstop=4
set visualbell
set showmatch
set number


set background=dark
set sw=2
set ts=2
set sts=2
colorscheme solarized

set splitbelow


"autoload nerdtree, and bind it to ctrl-d
autocmd vimenter * NERDTree
map <C-d> :NERDTreeToggle<CR>

"Configure ctrlp
set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'


"Close vim if only nerdtree remains
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"Ignores for CtrlP
set wildignore+=*/tmp/*,*.so,*.swp,*.zip,*/target/*     " MacOSX/Linux

let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'
