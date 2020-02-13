set nocompatible              " required
filetype off                  " required
set number
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'vim-scripts/indentpython.vim'
Plugin 'jnurmine/Zenburn'
Plugin 'altercation/vim-colors-solarized'
Plugin 'morhetz/gruvbox'
Plugin 'larsbs/vimterial_dark'
Plugin 'scrooloose/nerdtree'
Plugin 'kien/ctrlp.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'posva/vim-vue'
"Plugin 'ervandew/supertab'
Plugin 'ycm-core/YouCompleteMe'
Plugin 'vim-syntastic/syntastic'
Plugin 'nvie/vim-flake8'
Plugin 'dense-analysis/ale'


call vundle#end()

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)

" ...

" All of your Plugins must be added before the following line

syntax on
filetype indent plugin on

colorscheme molokai
set t_Co=256
highlight Comment cterm=bold

" configure expanding of tabs for various file types
au BufRead,BufNewFile *.py 
            \ set expandtab 
            \ |set softtabstop=4 
            \ |set shiftwidth=4 
            \ |set textwidth=79 
            \ |set expandtab 
            \ |set autoindent 
            \ |set fileformat=unix

au BufRead,BufNewFile *.c set noexpandtab
au BufRead,BufNewFile *.h set noexpandtab
au BufRead,BufNewFile Makefile* set noexpandtab

" --------------------------------------------------------------------------------
" configure editor with tabs and nice stuff...
" --------------------------------------------------------------------------------
"set expandtab           " enter spaces when tab is pressed
"set textwidth=120       " break lines when line length increases
"set tabstop=4           " use 4 spaces to represent tab
"set softtabstop=4
"set shiftwidth=4        " number of spaces to use for auto indent
"set autoindent          " copy indent from current line when starting a new line

" make backspaces more powerfull
set backspace=indent,eol,start

set ruler                           " show line and column number
syntax on               " syntax highlighting
set showcmd             " show (partial) command in status line
set mouse=a
set encoding=utf-8

" enable folding 
set foldmethod=indent
set foldlevel=99

" Enable folding with spacebar
nnoremap <space> za

let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Ctrl-n NERDTree
nmap <C-n> :NERDTreeToggle<CR>

" Map buffer next previous
map <F9> :bprevious<CR>
map <F10> :bnext<CR>
