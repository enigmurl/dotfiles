return {
    {
        "echasnovski/mini.pairs",
        event = "VeryLazy",
        opts = {
            modes = { insert = true, command = true, terminal = false },
            -- skip autopair when next character is one of these
            skip_next = [=[[%w%%%'%[%"%.%`%$]]=],
            -- skip autopair when the cursor is inside these treesitter nodes
            skip_ts = { "string" },
            -- skip autopair when next character is closing pair
            -- and there are more closing pairs than opening pairs
            skip_unbalanced = true,
            -- better deal with markdown code blocks
            markdown = true,
        },
    },
    {
        'hrsh7th/nvim-cmp',
        dependencies = {
            'hrsh7th/cmp-nvim-lsp',         -- LSP source for nvim-cmp
            'hrsh7th/cmp-buffer',           -- Buffer completion source
            'hrsh7th/cmp-path',             -- Path completion source
            'hrsh7th/cmp-cmdline',          -- Cmdline completion source
            'saadparwaiz1/cmp_luasnip',     -- Snippet completion source
            'L3MON4D3/LuaSnip',             -- Snippet engine
        },
        config= function() 
            local cmp = require'cmp'

            cmp.setup({
                snippet = {
                    expand = function(args)
                        require('luasnip').lsp_expand(args.body)  -- Use LuaSnip for snippets
                    end,
                },
                mapping = {
                    ['˚'] = cmp.mapping.select_prev_item(),  -- Navigate to previous item
                    ['<C-k>'] = cmp.mapping.select_prev_item(),  -- Navigate to previous item
                    ['∆'] = cmp.mapping.select_next_item(),  -- Navigate to next item
                    ['<C-j>'] = cmp.mapping.select_next_item(),  -- Navigate to next item
                    ['<C-d>'] = cmp.mapping.scroll_docs(-4),      -- Scroll documentation up
                    ['<C-f>'] = cmp.mapping.scroll_docs(4),       -- Scroll documentation down
                    ['<C-Space>'] = cmp.mapping.complete(),        -- Trigger completion
                    ['<C-e>'] = cmp.mapping.close(),               -- Close completion menu
                    ['<CR>'] = cmp.mapping.confirm({ select = true }),  -- Confirm selection
                },
                sources = {
                    { name = 'nvim_lsp' },  -- LSP source
                    { name = 'buffer' },     -- Buffer source
                    { name = 'path' },       -- Path source
                    { name = 'luasnip' },    -- Snippet source
                }
            })
        end,
    },
}
