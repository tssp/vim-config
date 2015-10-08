"
" Vim Configuration
"

" Set up colors
colorscheme xoria256

" Line numbering
set number
" set relativenumber " Deactivated for now, relative line numbers are confusing

" Enable status line always
set laststatus=2

" Show the current mode
set showmode

" Switch on syntax highlighting.
syntax on

" Tabstops
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set autoindent

" Enable search highlighting
set hlsearch

" Incrementally match the search
set incsearch

" When scrolling, keep the cursor 8 lines from the top
set scrolloff=8

" Highlight current line
set cursorline

" Increase command history buffer
set history=50