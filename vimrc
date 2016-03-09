"
" Vim Configuration
"

" be iMproved, required
set nocompatible              
filetype off                  

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'bling/vim-airline'
Plugin 'airblade/vim-gitgutter'
Plugin 'derekwyatt/vim-scala'
Plugin 'ervandew/supertab'

Plugin 'luochen1990/rainbow'


" required
call vundle#end()            
filetype plugin indent on 


execute pathogen#infect()

" Ignore target directories in CtrP
set wildignore+=*/target/*,*.swp

" Enable Rainbow parentheses
let g:rainbow_active = 1 "0 if you want to enable it later via :RainbowToggle

" Disable arrow keys to learn navigation
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Toogle NERDTree
map <F5> :NERDTreeToggle<CR>
map <F8> :Tagbar<CR>

" Syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Move through split windows more easy
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Open split windows on the right and bottom
set splitbelow
set splitright

" Disable scrollbars in GUI mode
set guioptions-=r 
set guioptions-=L 
"nnoremap ü <C-]>
"nnoremap Ü <C-O>


" Make % match keyworks
runtime macros/matchit.vim

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
