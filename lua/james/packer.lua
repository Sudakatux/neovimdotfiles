-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	-- The finder dialog
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.6',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	-- The Color scheme
	use { "rose-pine/neovim", as = "rose-pine", config = function ()
		vim.cmd('colorscheme rose-pine')
	end} 

	use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	use('nvim-treesitter/playground')
	use('ThePrimeagen/harpoon')
	use('mbbill/undotree')
	use('tpope/vim-surround')
	use('tpope/vim-commentary')
    use('nvim-tree/nvim-tree.lua')
    use('nvim-tree/nvim-web-devicons')

    use {
        "pmizio/typescript-tools.nvim",
        requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
        config = function()
            require("typescript-tools").setup {}
        end,
    }


    -- upon renaming i expect to rename project wise
    -- use {
    --     "antosha417/nvim-lsp-file-operations",
    --     requires = {
    --         "nvim-lua/plenary.nvim",
    --         "nvim-tree/nvim-tree.lua",
    --     },
    --     config = function()
    --         require("lsp-file-operations").setup()
    --     end,
    -- }



    -- Clojure
    use('Olical/conjure')
    use('clojure-vim/vim-jack-in')
    -- use('tpope/vim-dispatch')
    use('radenling/vim-dispatch-neovim')

    -- complition
    use('hrsh7th/nvim-cmp')
    use('hrsh7th/cmp-nvim-lsp')
    use('L3MON4D3/LuaSnip')
    use('saadparwaiz1/cmp_luasnip')
    use('rafamadriz/friendly-snippets')

	use({
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig"
	})


    -- GIT plugins

    use('lewis6991/gitsigns.nvim')
    use('tpope/vim-fugitive')

	-- use {
	-- 	'VonHeikemen/lsp-zero.nvim',
	-- 	branch = 'v3.x',
	-- 	requires = {
	-- 		--- Uncomment the two plugins below if you want to manage the language servers from neovim
	-- 		-- {'williamboman/mason.nvim'},
	-- 		-- {'williamboman/mason-lspconfig.nvim'},

	-- 		{'neovim/nvim-lspconfig'},
	-- 		{'hrsh7th/nvim-cmp'},
	-- 		{'hrsh7th/cmp-nvim-lsp'},
	-- 		{'L3MON4D3/LuaSnip'},
	-- 	}
	-- }


end)
