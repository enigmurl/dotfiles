return {
    'nvim-telescope/telescope.nvim', tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim', 'BurntSushi/ripgrep' },
    keys = {
        -- Option+j mapping for next
        {
            "∆",
            function()
                require('telescope.actions').move_selection_next()
            end,
            mode = { "i", "n" },
            desc = "Move to next selection in Telescope"
        },
        -- Option+k mapping for previous
        {
            "˚",
            function()
                require('telescope.actions').move_selection_previous()
            end,
            mode = { "i", "n" },
            desc = "Move to previous selection in Telescope"
        },
        -- quick open
        {
            "<D-o>",
            "<cmd>Telescope find_files<cr>",
            mode = { "i", "n" },
            desc = "Find Files"
        },
        {
            "<D-O>",
            "<cmd>Telescope buffers<cr>",
            mode = { "i", "n" },
            desc = "Find Buffers"
        },
        {
            "<leader>fg",
            "<cmd>Telescope live_grep<cr>",
            mode = { "n" },
            desc = "Live Grep Files"
        },
        {
            "<leader>ff",
            "<cmd>Telescope find_files<cr>",
            mode = { "n" },
            desc = "Find Files"
        },
        {
            "<leader>fb",
            "<cmd>Telescope buffers<cr>",
            mode = { "n" },
            desc = "Find Files"
        }
    },
    opts = {
        defaults = {
            mappings = {
                i = {
                    ["∆"] = require('telescope.actions').move_selection_next,
                    ["˚"] = require('telescope.actions').move_selection_previous,
                },
                n = {
                    ["∆"] = require('telescope.actions').move_selection_next,
                    ["˚"] = require('telescope.actions').move_selection_previous,
                }
            }
        }
    }
}

