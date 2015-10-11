syntax on
set number
set nocompatible
set ruler
set laststatus=2
set tabstop=2
set shiftwidth=2
set expandtab
set showcmd
set cursorline
set wildmenu
set showmatch

set foldenable
nnoremap <space> za
set foldmethod=indent
set foldlevelstart=99

nnoremap j gj
nnoremap k gk

" graphical vim
"set guifont=Droid\ Sans\ Mono:h14
set guifont=Droid\ Sans\ Mono\ for\ Powerline:h14
set linespace=4

" Plugins
filetype off                  " Req'd for vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'chriskempson/base16-vim'
Bundle 'bling/vim-airline'
Bundle 'kien/ctrlp.vim'
"Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'ngmy/vim-rubocop'

call vundle#end() 
filetype plugin indent on

" Plugin-specific

let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_clear_cache_on_exit = 0
let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
let g:airline_powerline_fonts= 1
map <c-cr> :CtrlP<c-v>

" Theme
let base16colorspace=256
set background=dark
colorscheme base16-default
