set nocompatible

syntax on
"filetype on
"filetype plugin indent on

set t_Co=25

" set number
set history=500
set encoding=utf8

set foldmethod=indent
set foldlevel=99

set ruler
set cursorline

color tm

" ignore case fore searching
set ignorecase

" higlighting search results
set hlsearch

" Show matching brackets when text indicator is over them
set showmatch
" How many tenths of a second to blink when matching brackets
set mat=2

set expandtab
set smarttab
" 1 tab == 4 spaces
set shiftwidth=2
set tabstop=2

" Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" Remember info about open buffers on close
set viminfo^=%

set listchars=tab:>-,trail:.,
set list
