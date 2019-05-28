set encoding=utf-8
set nocompatible              " required
filetype off                  " required
set clipboard=unnamed
set nu



" Enable Code Folding
set foldmethod=indent
set foldlevel=99
" Code Folding with the Spacebar
nnoremap <space> za

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'tpope/vim-fugitive'
"Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

"Proper Indenting Settings for Python (PEP8)

let python_highlight_all=1
syntax on

au BufNewFile,BufRead *.py
\ set tabstop=4
"\ set softtabstop=4
\ set shiftwidth=4
\ set textwidth=79
\ set expandtab
\ set autoindent
\ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
	\ set tabstop=2
"	\ set softtabstop=2

" Color Scheme Logic
if has('gui_running')
	set background=dark
	colorscheme solarized
else
	set background=light
	colorscheme zenburn
endif

call togglebg#map("<F5>")

