vim.g.mapleader = '\\'

-- gutter
vim.opt.signcolumn = "yes" -- avoid layout shift with lean.nvim
vim.o.number = true
vim.o.relativenumber = true

vim.api.nvim_set_keymap('v', 'p', 'P', { noremap = true, silent = true })

-- # lazy shift key
vim.api.nvim_create_user_command('W', 'write', { bar = true, nargs = '*', complete = 'file' })
vim.api.nvim_create_user_command('Write', 'write', { bar = true, nargs = '*', complete = 'file' })
vim.api.nvim_create_user_command('Wq', 'wq', { bar = true, nargs = '*', complete = 'file' })
vim.api.nvim_create_user_command('Wqall', 'wqa', { bar = true, nargs = 0 })
vim.api.nvim_create_user_command('Q', 'quit', { bar = true, nargs = 0 })

-- select entire buffer
vim.api.nvim_set_keymap('n', 'gA', '<Esc>ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', 'gA', '<Esc>ggVG', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'yA', ':let @+ = join(getline(1, "$"), "\\n") <bar> echo "Copied entire buffer"<CR>', { noremap = true, silent = true })

-- Show the current mode in the command line
vim.o.showmode = true

-- Tabs and indentation settings
vim.o.tabstop = 4               -- A tab is four spaces
vim.o.softtabstop = 4           -- When hitting <BS>, treat it as removing a tab, even if spaces
vim.o.expandtab = true          -- Convert tabs to spaces by default
vim.o.shiftwidth = 4            -- Number of spaces to use for autoindenting
vim.o.shiftround = true         -- Use multiples of shiftwidth for '<' and '>'
vim.o.backspace = "indent,eol,start" -- Allow backspacing over everything in insert mode
vim.o.autoindent = true         -- Always enable auto-indentation
vim.o.copyindent = true         -- Copy previous indentation on autoindenting

-- Matching parentheses highlight
vim.o.showmatch = true

-- Insert tabs at the start of a line according to shiftwidth
vim.o.smarttab = true

-- Scrolling settings
vim.o.scrolloff = 4 
