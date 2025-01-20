require("catppuccin").setup({
    flavour = "macchiato", -- Options: latte, frappe, macchiato, mocha
    transparent_background = false,
    term_colors = true,
    integrations = {
        treesitter = true,
        lualine = false, -- Set to true if using lualine.nvim
        nvimtree = true,
        telescope = true,
        gitsigns = true,
    },
})

-- Apply the Catppuccin theme
vim.cmd.colorscheme "catppuccin"
