require("packer").startup(function(use)
    use "wbthomason/packer.nvim" -- Packer manages itself
    use { "catppuccin/nvim", as = "catppuccin" } 

    -- disable highlighting after done searching
    use "romainl/vim-cool"
    use {
	    "Julian/lean.nvim",
	    requires = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" }, -- Dependency for lean.nvim
	    config = function()
		require('lean').setup({
		    -- Example configuration
		    abbreviations = { enable = true },
		    lsp = {
			on_attach = function(client, bufnr)
			    -- Optional: Keybindings for LSP
			    local opts = { noremap = true, silent = true, buffer = bufnr }
			    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
			    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
			end,
		    },
		    mappings = true, -- Enable default key mappings
		    infoview = { autoopen = true }, -- Auto-open Lean's infoview
		})
	    end
	}

    use "neovim/nvim-lspconfig"
    use "nvim-lua/plenary.nvim" 
end)
