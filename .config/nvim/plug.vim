if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

" Plug 'ap/vim-css-color' " CSS Color Preview
"Plug 'rafi/awesome-vim-colorschemes' " Retro Scheme
"Plug 'neoclide/coc.nvim'  " Auto Completion
"Plug 'ryanoasis/vim-devicons' " Developer Icons
"Plug 'akinsho/toggleterm.nvim' " NVIM Split terminal
"Plug 'preservim/tagbar' " Tagbar for code navigation
"sPlug 'terryma/vim-multiple-cursors' " CTRL + N for multiple cursors

" NERDTree
"Plug 'preservim/nerdtree' " NerdTree
"Plug 'PhilRunninger/nerdtree-visual-selection' " 
"Plug 'Xuyuanp/nerdtree-git-plugin' " Show Git Status
"Plug 'ryanoasis/vim-devicons' " Icon
"Plug 'tiagofumo/vim-nerdtree-syntax-highlight' 
call plug#end()
