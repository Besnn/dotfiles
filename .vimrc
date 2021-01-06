" .vimrc

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
inoremap jk <esc>
nnoremap <leader><leader>/ :w<Enter> :o 
nnoremap <leader><leader> :w<Enter>
nnoremap <leader>mkr o<esc> i" <esc> 26. kdd
set backspace=indent,eol,start
" python
autocmd filetype python set norelativenumber number
autocmd filetype python nnoremap <leader>cc I#
" markdown
autocmd filetype markdown set list
autocmd filetype markdown set listchars=trail:¬
" " " " " " " " " " " " " " " " " " " " " " " " " " " 
" VIM PLUGINS
call plug#begin("~/.vim/plugged")
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'suan/vim-instant-markdown', {'rtp': 'after'}
call vundle#end()

" PLUGIN OPTIONS & BINDINGS
let g:instant_markdown_autostart = 0
nmap <leader>m :InstantMarkdownPreview<cr>
nmap <leader>n :InstantMarkdownStop<cr>
