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
nnoremap <leader>mkr o<esc> i" <esc> 26. kdd
set backspace=indent,eol,start
" python
autocmd filetype python set norelativenumber number
autocmd filetype python nnoremap <leader>cc I#
" " " " " " " " " " " " " " " " " " " " " " " " " " " 
" VIM PLUGINS
call plug#begin("~/.vim/plugged")
call plug#end()

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
call vundle#end()


