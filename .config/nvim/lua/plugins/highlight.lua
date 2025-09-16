return {
    -- after a search is done, disable it
    {
        'romainl/vim-cool',
        event = 'BufReadPre' -- Load only when a file is opened
    }
}
