" Fundamentals "{{{
" -------------------------------------------------------------------------------------------------

" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

set nocompatible
set t_Co=256		" set terminal 256 color

syntax enable
set encoding=UTF-8

set title
set showcmd
set mouse=a		" Enabled Mouse Selection
set number		" Enabled line number on selected line
set relativenumber	" Enabled line numbering
set autoindent		"
set laststatus=2	" Status Line always Active
set background=dark
set expandtab
set hidden " you can change buffers without saving
set modifiable

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif


set nosc noru nosm
" Don't redraw while executing macros (good performance config)
set lazyredraw
" Ignore case when searching
set ignorecase

" Finding files - Search down into subfolders
" Be smart when using tabs ;)
set smarttab
" indents
filetype plugin indent on
set shiftwidth=2
set softtabstop=2
set ai "Auto indent
set si "Smart indent
"set nowrap "No Wrap lines
set backspace=start,eol,indent

" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/*

"}}}


" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim

"}}}

