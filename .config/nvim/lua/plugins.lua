return require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'

  -- Syntax Highlight
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }
 
	-- nvim-telescope
	use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
	}	

	-- nvim telescope depedency
	use 'BurntSushi/ripgrep'
	use 'kyazdani42/nvim-web-devicons' -- icon

	-- transparent background
  use 'xiyaowong/nvim-transparent'

  -- colorscheme {{{
  -- gruvbox
  use 'gruvbox-community/gruvbox'
  -- darkplus
  use 'yong1le/darkplus.nvim'
  -- }}}

  -- Notify
  use 'rcarriga/nvim-notify'

end)
