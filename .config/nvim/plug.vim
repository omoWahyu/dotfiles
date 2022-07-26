if has("nvim")
  let g:plug_home = stdpath('data') . '/plugged'
endif

call plug#begin()

Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'

if has("nvim")
  Plug 'nvim-lualine/lualine.nvim'
  Plug 'kyazdani42/nvim-web-devicons'         " Adding Icon
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'neovim/nvim-lspconfig'
  Plug 'williamboman/nvim-lsp-installer'
  Plug 'tami5/lspsaga.nvim'
  Plug 'folke/lsp-colors.nvim'
  Plug 'L3MON4D3/LuaSnip'
  Plug 'hrsh7th/cmp-nvim-lsp'
  Plug 'hrsh7th/cmp-buffer'
  Plug 'hrsh7th/nvim-cmp'
  Plug 'nvim-treesitter/nvim-treesitter', { 'do': ':TSUpdate' }
  Plug 'onsails/lspkind-nvim'
  Plug 'nvim-lua/popup.nvim'
  Plug 'nvim-lua/plenary.nvim'                                    " Required By nvim-telescope
  Plug 'nvim-telescope/telescope.nvim'
  Plug 'windwp/nvim-autopairs'
  Plug 'windwp/nvim-ts-autotag'
  Plug 'kylechui/nvim-surround'
endif

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
