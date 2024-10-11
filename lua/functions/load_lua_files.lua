local function load_lua_files(directory)
    local absolute_path = vim.fn.stdpath("config") .. '/' .. directory
    local files = vim.fn.glob(absolute_path .. '/*.lua', 0, 1)  -- Get all .lua files
    for _, file in ipairs(files) do
        if vim.fn.fnamemodify(file, ':t') ~= 'lazy.lua' then  -- Skip lazy.lua
            dofile(file)  -- Load the file
        end
    end
end

return load_lua_files

