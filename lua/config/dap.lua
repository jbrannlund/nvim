local dap = require("dap")

-- Helper function to create a floating window
local function show_var(name, value)
    local buf = vim.api.nvim_create_buf(false, true) -- no file, scratch buffer
    local lines = { name .. " = " .. tostring(value) }
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

    local width = math.max(#lines[1] + 2, 20)
    local height = #lines

    local opts = {
        relative = "cursor",
        row = 1,
        col = 0,
        width = width,
        height = height,
        style = "minimal",
        border = "rounded",
    }

    local win = vim.api.nvim_open_win(buf, false, opts)

    -- Auto close after 3 seconds
    vim.defer_fn(function()
        if vim.api.nvim_win_is_valid(win) then
            vim.api.nvim_win_close(win, true)
        end
    end, 3000)
end

-- Keybinding: <Leader>dh to show variable under cursor
vim.api.nvim_set_keymap("n", "<Leader>dh", "", {
    noremap = true,
    silent = true,
    callback = function()
        local session = dap.session()
        if not session then
            print("No active DAP session")
            return
        end

        local frame = session.current_frame
        if not frame then
            print("No current frame")
            return
        end

        local var_name = vim.fn.expand("<cword>")
        dap.evaluate(var_name, {
            context = "hover",
            frame = frame,
        }, function(response)
            if response and response.body and response.body.result then
                show_var(var_name, response.body.result)
            else
                show_var(var_name, "<not available>")
            end
        end)
    end,
})

