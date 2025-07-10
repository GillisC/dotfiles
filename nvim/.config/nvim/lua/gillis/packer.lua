-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "rebelot/kanagawa.nvim",
        as = "kanagawa",
    }

    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate" -- Automatically update Mason
    }
    use "williamboman/mason-lspconfig.nvim" -- Bridges Mason with LSP
    use "L3MON4D3/LuaSnip"
    use 'davidgranstrom/nvim-markdown-preview'
    use {
        "nvim-lualine/lualine.nvim",
        requires = { "nvim-tree/nvim-web-devicons", opt=true }
    }
    use({
        "stevearc/oil.nvim",
        config = function()
            require("oil").setup()
        end,
    })
    use({
        "kylechui/nvim-surround",
        tag = "*",
        config = function()
            require("nvim-surround").setup({})
        end,
    })
    use({
        "windwp/nvim-autopairs",
        event = "InsertEnter",
        config = function ()
            require("nvim-autopairs").setup {}
        end
    })
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    }
    use {
        "stevearc/conform.nvim",
        config = function()
            require("conform").setup()
        end
    }
    use "RRethy/nvim-base16"
    use {
        "NvChad/nvim-colorizer.lua",
        config = function()
            require("colorizer").setup()
        end
    }
    use "webhooked/kanso.nvim"
end)
