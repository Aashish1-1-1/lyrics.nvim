local M = {}

function M.getlyrics(song)
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(buf,'bufhidden','wipe')
   
    vim.api.nvim_open_win(buf, true, {
        relative = 'editor',
        width = 30,
        height = 10,
        row = 18,
        col = 0,
        border = 'rounded',
    })
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "Hello, welcome to my plugin!","This is line2 ","This is line 3" })
end

vim.api.nvim_create_user_command(
    'Lyrics',
    function(opts) 
        M.getlyrics(opts.args)
    end,
    {nargs = 1}
)

return M

