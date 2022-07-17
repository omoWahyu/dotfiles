
" ----------------------------------------------------------------------------
set nocompatible               " be iMproved, required
set t_Co=256                   " set terminal 256 color
"filetype off                   " required
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Plugin Manager {{{
" Plugin Manager : vim-plug
" Source : https://github.com/junegunn/vim-plug

call plug#begin('~/.vim/plugged')

" Or install latest release tag
Plug 'neoclide/coc.nvim', {'do': './install.sh'}

" Or build from source code by using yarn: https://yarnpkg.com
Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}

" A tree explorer plugin for vim.
Plug 'scrooloose/nerdtree'

" Vim plugin that displays tags in a window, ordered by scope. with F8
Plug 'majutsushi/tagbar'

" Adds file type glyphs/icons to popular Vim plugins: NERDTree, vim-airline, Powerline, Unite, vim-startify and more.
Plug 'ryanoasis/vim-devicons'

" A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" A vim plugin to display the indention levels with thin vertical lines
Plug 'Yggdroot/indentLine'


call plug#end()

" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Basic {{{
" ----------------------------------------------------------------------------
syntax enable
filetype plugin indent on
set encoding=UTF-8
" }}}
" ----------------------------------------------------------------------------


" ----------------------------------------------------------------------------
" General {{{
" ----------------------------------------------------------------------------

set mouse=n " use mouse everywhere default a

" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" User Interface {{{
" ----------------------------------------------------------------------------

set hlsearch " highlight search matches
set nu " turn on line number on selected line
set relativenumber " turn on line numbers
set cursorline " visually mark current line
set showcmd " show the command being typed
set showmode " show current mode
set showmatch " show matching brackets
set laststatus=2 " always show the status line, vim 1, neovim 2
set ttimeoutlen=0  " make Esc work faster
set ttyfast " i have a fast terminal

" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Text Formatting/Layout {{{
" ----------------------------------------------------------------------------
set autoindent
set wrap " wrap text
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Keyboard Mappings {{{
" ----------------------------------------------------------------------------

" for edit my .vimrc
nmap <leader>ev :e ~/.vimrc<cr>

" sudo save
cmap w!! w !sudo tee % >/dev/null

" toggle NerdTree plugin
nmap <F12> :NERDTreeToggle<cr>

" toggle Tagbar plugin
nmap <F8> :TagbarToggle<cr>

" fzf.vim
nmap <C-p> :Buffers<cr>
nmap <C-f> :FZF<cr>
"nmap <C-f> :Files<cr>

" for move focus to each split
nmap <C-h> <C-w><C-h>
nmap <C-j> <C-w><C-j>
nmap <C-k> <C-w><C-k>
nmap <C-l> <C-w><C-l>

" ----------------------------------------------------------------------------
" }}}
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" Plugins Settings {{{
" ----------------------------------------------------------------------------

" NerdTree {{{
" ----------------------------------------------------------------------------

" Width
let g:NERDTreeWinSize=35

" ----------------------------------------------------------------------------
" }}}
" ----------------------------------------------------------------------------
" TagBar {{{
" ----------------------------------------------------------------------------
let g:tagbar_width = 35
let g:airline#extensions#tagbar#enabled = 0
" ----------------------------------------------------------------------------
" }}}"
" ----------------------------------------------------------------------------

" ----------------------------------------------------------------------------
" LightLine {{{
" ----------------------------------------------------------------------------
let g:lightline = {
  \ 'colorscheme': 'wombat',
  \   'active': {
  \    'left' :[[ 'mode', 'paste' ],
  \             [ 'gitbranch', 'readonly' ],
  \             [ 'filename', 'modified' ]],
  \    'right':[[ 'lineinfo' ],
  \             [ 'percent' ],
  \             [ 'filetype', 'fileencoding', 'fileformat' ] ]
  \   },
  \   'component': {
  \     'lineinfo': ' %3l:%-2v',
  \     'filename': '%<%f'
  \   },
  \   'component_function': {
  \     'gitbranch': 'LightlineFugitive',
  \     'readonly': 'LightlineReadonly',
  \     'modified': 'LightlineModified',
  \     'fileformat': 'LightlineFileformat',
  \     'filetype': 'LightlineFiletype',
  \   }
\}

