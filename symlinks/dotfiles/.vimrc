" global

set nocompatible
filetype off

set number
set history=1000
set noshowcmd
set noshowmode
set visualbell
set hidden
set background=dark
set laststatus=0
let g:colors_name='edd'
syntax on

set noswapfile

" indents
set autoindent
set smartindent
set smarttab
set tabstop=2
set softtabstop=0
set expandtab
set shiftwidth=2

let mapleader=";"

filetype plugin on
filetype indent on

" Set up plugins
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif

""""""""
if has('autocmd')
  filetype plugin indent on
endif
if has('syntax') && !exists('g:syntax_on')
  syntax enable
endif

" Search
set incsearch
" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<CR><C-L>
endif

" Find
map <C-f> /

" indent / deindent after selecting the text with (⇧ v), (.) to repeat.
vnoremap <Tab> >
vnoremap <S-Tab> <

" comment / decomment & normal comment behavior
vmap <C-m> gc

" Disable tComment to escape some entities
let g:tcomment#replacements_xml={}

" Text wrap simpler, then type the open tag or ',"
vmap <C-w> S

" Cut, Paste, Copy
vmap <C-x> d
vmap <C-v> p
vmap <C-c> y

