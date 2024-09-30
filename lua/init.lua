local M = {}
local curl = require("plenary.curl")
function print_table(t)
    for k, v in pairs(t) do
        if type(v) == "table" then
            print(k .. ": ")
        else
            print(k .. ": " .. tostring(v))
        end
    end
end
local function split_string_by_newlines(str)
    local result = {}
    for line in str:gmatch("([^\n]*)\n?") do
        table.insert(result, line)
    end
    return result
end
function M.getlyrics(song)
    local buf = vim.api.nvim_create_buf(false, true)
    vim.api.nvim_buf_set_option(buf,'bufhidden','wipe')
  
    vim.api.nvim_open_win(buf, true, {
        relative = 'editor',
        width = 30,
        height = 30,
        row = 0,
        col = 100,
        border = 'rounded',
    })
    --preparing for curl
    local lyrics = ""
    local query = tostring(song)
    query = query:gsub("%s+", "%%20")  
    query = query:gsub("@", "/")  
    local url = "https://lyrist.vercel.app/api/" .. query
    local response = curl.get(url,{
        timeout = 5000
      })
      if response.status == 200 then
        data = vim.json.decode(response.body)
        if next(data) == nil then
          lyrics = {"Lyrics NotFound Sorry :/"}
        else
          lyrics = split_string_by_newlines(data.lyrics)
        --print(data.lyrics)
        --print(type(data.lyrics))
        end
      else
        print("Error: " .. response.status .. " - " .. response.body)
      end
      vim.api.nvim_buf_set_lines(buf, 0, -1, false,lyrics)
end

vim.api.nvim_create_user_command(
    'Lyrics',
    function(opts) 
        M.getlyrics(opts.args)
    end,
    {nargs = 1}
)
return M
