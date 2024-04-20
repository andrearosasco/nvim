local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
	  "git",
	  "clone",
	  "--filter=blob:none",
	  "https://github.com/folke/lazy.nvim.git",
	  "--branch=stable", -- latest stable release
	  lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
	'nvim-telescope/telescope.nvim', branch = '0.1.x',
	dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
	    "rose-pine/neovim",
	    name = "rose-pine",
	    config = function()
		    vim.cmd("colorscheme rose-pine")
	    end
    },
    {
	    'nvim-treesitter/nvim-treesitter',
	    build = ':TSUpdate'
    },
    'mbbill/undotree',
    'tpope/vim-fugitive',
    -- lsp-zero configs
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
    {'neovim/nvim-lspconfig'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/nvim-cmp'},
    {'L3MON4D3/LuaSnip'},
    {'hrsh7th/cmp-buffer'},
    {'onsails/lspkind.nvim'},
    {'karb94/neoscroll.nvim'},
    {'itchyny/lightline.vim'},
    {'pocco81/auto-save.nvim'},
})
