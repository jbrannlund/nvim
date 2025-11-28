if not vim.g.vscode then
    local ok, neo_tree = pcall(require, "neo-tree")
    if ok and neo_tree then
        neo_tree.setup({
            window = {
                width = 25, -- Set the desired width here
            },
            filesystem = {
                follow_current_file = { enabled = true },
                use_libuv_file_watcher = true,
            },
        })
    end
end

