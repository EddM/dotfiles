" global

set nocompatible
filetype off

set number
set history=1000
set showcmd
set showmode
set visualbell
set hidden
set background=dark
let g:colors_name='edd'
syntax on

set noswapfile

" indents
set autoindent
set smartindent
set smarttab

filetype plugin on
filetype indent on

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

" Undo, Redo (broken)
nnoremap <C-z>  :undo<CR>
inoremap <C-z>  <Esc>:undo<CR>
nnoremap <C-y>  :redo<CR>
inoremap <C-y>  <Esc>:redo<CR>

