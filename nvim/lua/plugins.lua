-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use 'windwp/nvim-autopairs'
  use 'myusuf3/numbers.vim'
  use 'codehearts/mascara-vim'
  use {
    "williamboman/nvim-lsp-installer",
    "neovim/nvim-lspconfig",
}
  -- Load on an autocommand event
  use {'andymass/vim-matchup', event = 'VimEnter'} 
  use 'RRethy/nvim-base16' 
  -- Load on a combination of conditions: specific filetypes or commands
  -- Also run code after load (see the "config" key)
  -- nvim-magic 
  use({
	'jameshiew/nvim-magic',
	config = function()
		require('nvim-magic').setup()
	end,
	requires = {
		'nvim-lua/plenary.nvim',
		'MunifTanjim/nui.nvim'
	}
    })

  use {'junegunn/goyo.vim'}
  use 'junegunn/limelight.vim'
  use {'baabelfish/nvim-nim'}

  use { 'ibhagwan/fzf-lua' }
  -- optional for icon support
  use { 'kyazdani42/nvim-web-devicons' }

  -- Post-install/update hook with neovim command
  use {'neoclide/coc.nvim', branch = 'release'}
  use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  -- Use dependency and run lua function after load
  use {
    'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' },
    config = function() require('gitsigns').setup() end
  }

  -- You can specify multiple plugins in a single call
--  use 'Shougo/deoplete.nvim'

  -- You can alias plugin names
  use {'dracula/vim', as = 'dracula'}
end)
