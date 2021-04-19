"" .vimrc

" OPTIONS
syntax on
filetype indent plugin on
set nocompatible
set wildmenu
set tabstop=4
set relativenumber
set shiftwidth=4
set showcmd
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
set directory=~/.vim/tmp
inoremap jk <esc>
nnoremap <leader><leader>/ :w<Enter> :o 
nnoremap <leader><leader> :w<Enter>
nnoremap <leader>mkr o<esc> i" <esc> 26. kdd
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
autocmd filetype python set norelativenumber number
autocmd filetype python nnoremap <leader>cc I#
" markdown
autocmd filetype markdown set list
autocmd filetype markdown set listchars=trail:¬
" assembly 8086
nnoremap <leader>ba i.model small<CR><CR>.stack 256<CR>; Macros<CR><CR>.data<CR><CR>.code<CR><CR>start:<CR>mov ax, @code<CR>mov es, ax<CR>mov ax, @data<CR>mov ds, ax<CR><CR><CR>end start<Esc>2k
" " " " " " " " " " " " " " " " " " " " " " " " " " " 
" VIM PLUGINS
"call plug#begin("~/.vim/plugged")
"call plug#end()
"
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
"call vundle#end()

" PLUGIN OPTIONS & BINDINGS
"let g:instant_markdown_autostart = 0
"nmap <leader>m :InstantMarkdownPreview<cr>
"nmap <leader>n :InstantMarkdownStop<cr>
