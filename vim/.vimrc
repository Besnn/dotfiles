" .vimrc

" OPTIONS
" Toggles
syntax on
filetype indent plugin on


" Sets
set nocompatible

set mouse=a

set encoding=UTF-8

set wildmenu
set wildmode=list:longest,full
set showcmd

set ruler
set relativenumber
set number

set smarttab
set shiftwidth=2
set expandtab
set tabstop=2
set softtabstop=2
set autoindent

set incsearch

set splitright

" Lets
let mapleader = " "

" Other
packloadall

" REMAPS
" Shebangs
nnoremap <leader>bb <Esc>i#!/bin/bash<Enter><Enter>
nnoremap <leader>bp <Esc>i#!/usr/bin/env python3<Enter><Enter>
nnoremap <leader>bs <Esc>i#!/bin/sh<Enter><Enter>
" " " " " " " " " " " " " " " " " " " " " " " " " " " "
" Edit/source .vimrc
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" Text Editing
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" Quality of life
nnoremap <leader><leader>/ :w<Enter> :o 
nnoremap <leader><leader> :w<Enter>
nnoremap <leader>mkr o<esc> i" <esc> 26. kdd
" Windows
nnoremap <leader>v :vsplit<CR>
nnoremap <leader>s :split<CR>
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>ide :TagbarToggle<CR>:NERDTreeToggle<CR>
set backspace=indent,eol,start
" Tabs
nnoremap <leader>; :tabp<CR>
nnoremap <leader>' :tabn<CR>
nnoremap <leader>to :tabe
nnoremap <leader>te :tabe<CR>
" Not Quality of Life
nnoremap <Left> :echo "No left for you!"<CR>
vnoremap <Left> :<C-u>echo "No left for you!"<CR>
inoremap <Left> <C-o>:echo "No left for you!"<CR>
nnoremap <Right> :echo "No right for you!"<CR>
vnoremap <Right> :<C-u>echo "No right for you!"<CR>
inoremap <Right> <C-o>:echo "No right for you!"<CR>
nnoremap <Up> :echo "No up for you!"<CR>
vnoremap <Up> :<C-u>echo "No up for you!"<CR>
inoremap <Up> <C-o>:echo "No up for you!"<CR>
nnoremap <Down> :echo "No down for you!"<CR>
vnoremap <Down> :<C-u>echo "No down for you!"<CR>
inoremap <Down> <C-o>:echo "No down for you!"<CR>
" Python
augroup python_files
	au!
	au filetype python nnoremap <leader>cc I#
	au filetype python set list
	au filetype python set listchars=trail:¬,eol:¬
	"au filetype python set colorcolumn=81
	au filetype python set smarttab
	au filetype python set shiftwidth=4
	au filetype python set expandtab
	au filetype python set tabstop=4
	au filetype python set softtabstop=4
	au filetype python set textwidth=79
	au filetype python set shiftround
	au filetype python set autoindent
	"au filetype python highlight colorcolumn ctermbg=red
augroup END
" Markdown
augroup markdown_files
	au!
	au filetype markdown set list
	au filetype markdown set listchars=trail:¬,eol:¬
augroup END

" " " " " " " " " " " " " " " " " " " " " " " " " " " 
" VIM PLUGINS
call plug#begin("~/.vim/plugged")
" Aesthetics
" " Color Schemes
Plug 'yuttie/hydrangea-vim'
Plug 'gregsexton/Muon'
Plug 'n1ghtmare/noirblaze-vim'
Plug 'thedenisnikulin/vim-cyberpunk'
Plug 'spookysec/vim-spooky'
Plug 'wimstefan/vim-artesanal'
Plug 'sickill/vim-monokai'
" Vim Line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" "
Plug 'Yggdroot/indentLine'
Plug 'tribela/vim-transparent'

" Functionality
" " Linting
Plug 'dense-analysis/ale'
" " Language Support
Plug 'dag/vim-fish'
"Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'
" " File Browser
Plug 'preservim/nerdtree'
" " Function View
Plug 'preservim/tagbar'
" " Autocompletion
Plug 'ycm-core/YouCompleteMe'
Plug 'davidhalter/jedi'
" WebDev
"Plug 'mattn/emmet-vim'
" "
Plug 'roxma/vim-paste-easy'
Plug 'tpope/vim-commentary'
call plug#end()

" Color Scheme
set notermguicolors
colorscheme monokai

"hi Normal guibg=NONE ctermbg=NONE
" Vim-airline
let g:airline_theme='badwolf'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR> 

" " " " " " " " " " " " " " " " " " " " " " " " " " "
" STALE CODE
"
" Assembly 8086
"nnoremap <leader>ba i.model small<CR><CR>.stack 256<CR>; Macros<CR><CR>.data<CR><CR>.code<CR><CR>start:<CR>mov ax, @code<CR>mov es, ax<CR>mov ax, @data<CR>mov ds, ax<CR><CR><CR>end start<Esc>2k
"
" TSV and Flashcards
"augroup tsv_files
"	au!
"	au BufNewFile,BufRead *.tsv set filetype=tsv
"	au filetype tsv set showbreak=↪|
"	au filetype tsv set list
"	au filetype tsv set listchars=tab:»·
"augroup END
