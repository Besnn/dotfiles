" .vimrc

" OPTIONS
syntax on
filetype indent plugin on
set nocompatible

set encoding=UTF-8

set wildmenu
set wildmode=list:longest,full
set showcmd

set ruler
set relativenumber
set number

set incsearch

packloadall
" leader

let mapleader = " "

" REMAPS
" shebangs
nnoremap <leader>bb <Esc>i#!/bin/bash<Enter><Enter>
nnoremap <leader>bp <Esc>i#!/usr/bin/env python3<Enter><Enter>
nnoremap <leader>bs <Esc>i#!/bin/sh<Enter><Enter>
" " " " " " " " " " " " " " " " " " " " " " " " " " " "
" edit/source .vimrc
noremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>
" text editing
nnoremap <leader>" viw<esc>a"<esc>bi"<esc>lel
nnoremap <leader>' viw<esc>a'<esc>bi'<esc>lel
" quality of life
inoremap jk <esc>
nnoremap <leader><leader>/ :w<Enter> :o 
nnoremap <leader><leader> :w<Enter>
nnoremap <leader>mkr o<esc> i" <esc> 26. kdd
" window
nnoremap <leader>v :vsplit<CR>
nnoremap <leader><leader>j :wincmd h<CR>
nnoremap <leader><leader>k :wincmd l<CR>
nnoremap <leader>ide :Tlist<CR> <C-w>r :NERDTreeToggle<CR>
set backspace=indent,eol,start
" not quality of life
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
" python
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
" tsv and flashcards
augroup tsv_files
	au!
	au BufNewFile,BufRead *.tsv set filetype=tsv
	au filetype tsv set showbreak=↪|
	au filetype tsv set list
	au filetype tsv set listchars=tab:»·
augroup END
" markdown
augroup markdown_files
	au!
	au filetype markdown set list
	au filetype markdown set listchars=trail:¬,eol:¬
augroup END
" assembly 8086
"nnoremap <leader>ba i.model small<CR><CR>.stack 256<CR>; Macros<CR><CR>.data<CR><CR>.code<CR><CR>start:<CR>mov ax, @code<CR>mov es, ax<CR>mov ax, @data<CR>mov ds, ax<CR><CR><CR>end start<Esc>2k
" " " " " " " " " " " " " " " " " " " " " " " " " " " 
" VIM PLUGINS
call plug#begin("~/.vim/plugged")
Plug 'dense-analysis/ale'
Plug 'ervandew/supertab'
Plug 'davidhalter/jedi-vim'
Plug 'Raimondi/delimitMate'
Plug 'roxma/vim-paste-easy'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jmcantrell/vim-virtualenv'
Plug 'vim-scripts/taglist.vim'
Plug 'preservim/nerdtree'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
call plug#end()

"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
"call vundle#end()

" PLUGIN OPTIONS & BINDINGS
" instant markdown
"let g:instant_markdown_autostart = 0
"nmap <leader>m :InstantMarkdownPreview<cr>
"nmap <leader>n :InstantMarkdownStop<cr>
" vim-airline
let g:airline_theme='fruit_punch'
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR> 
