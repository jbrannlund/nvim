local function load_lua_files(directory)
    local absolute_path = vim.fn.stdpath("config") .. '/' .. directory
    local files = vim.fn.glob(absolute_path .. '/*.lua', 0, 1)  -- Get all .lua files
    for _, file in ipairs(files) do
        dofile(file)  -- Load the file
    end
end

return load_lua_files

