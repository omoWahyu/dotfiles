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
set fileencodings=utf-8
set encoding=utf-8

set title
set showcmd
set mouse=a		" Enabled Mouse Selection
set number		" Enabled line number on selected line
set relativenumber	" Enabled line numbering
set autoindent		"
set laststatus=2	" Status Line always Active
set background=dark
set expandtab

set shell=fish

" incremental substitution (neovim)
if has('nvim')
  set inccommand=split
endif

"set ttimeoutlen=0  " make Esc work faster

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
set tabstop=2
set ai "Auto indent
set si "Smart indent
set nowrap "No Wrap lines
set backspace=start,eol,indent

" Finding files - Search down into subfolders
set path+=**
set wildignore+=*/node_modules/**


" Add asterisks in block comments
set formatoptions+=r

"}}}

" File types "{{{
" ---------------------------------------------------------------------
" JavaScript
au BufNewFile,BufRead *.es6 setf javascript
" TypeScript
au BufNewFile,BufRead *.tsx setf typescriptreact
" Markdown
au BufNewFile,BufRead *.md set filetype=markdown
au BufNewFile,BufRead *.mdx set filetype=markdown
" Flow
au BufNewFile,BufRead *.flow set filetype=javascript
" Fish
au BufNewFile,BufRead *.fish set filetype=fish

set suffixesadd=.js,.es,.jsx,.json,.css,.less,.sass,.styl,.php,.py,.md

autocmd FileType coffee setlocal shiftwidth=2 tabstop=2
autocmd FileType ruby setlocal shiftwidth=2 tabstop=2
autocmd FileType yaml setlocal shiftwidth=2 tabstop=2

"}}}

" Imports "{{{
" ---------------------------------------------------------------------
runtime ./plug.vim
runtime ./maps.vim

"}}}

" Extras "{{{
" ---------------------------------------------------------------------
set exrc
"}}}
