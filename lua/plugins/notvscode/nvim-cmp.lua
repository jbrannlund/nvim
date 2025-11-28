return {
    {
        "hrsh7th/nvim-cmp",
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-cmdline",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            "mfussenegger/nvim-dap",
            "rcarriga/cmp-dap",
            "rcarriga/nvim-dap-ui",
            "theHamsta/nvim-dap-virtual-text",
            "neovim/nvim-lspconfig",
        },
        config = function()
            -------------------------------------------------
            -- Mason
            -------------------------------------------------
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = { "intelephense", "pyright", "clangd", "ts_ls" },
            })

            -------------------------------------------------
            -- LSP capabilities
            -------------------------------------------------
            local capabilities = require("cmp_nvim_lsp").default_capabilities()
            local cfg = vim.lsp.config

            cfg.intelephense = { capabilities = capabilities }
            cfg.pyright = { capabilities = capabilities }
            cfg.clangd = { capabilities = capabilities }
            cfg.ts_ls = { capabilities = capabilities }

            -- Auto-start LSP per filetype
            vim.api.nvim_create_autocmd("FileType", {
                pattern = { "php", "python", "c", "cpp", "javascript", "typescript" },
                callback = function(event)
                    local ft = event.match
                    if ft == "php" then vim.lsp.start(cfg.intelephense)
                    elseif ft == "python" then vim.lsp.start(cfg.pyright)
                    elseif ft == "c" or ft == "cpp" then vim.lsp.start(cfg.clangd)
                    elseif ft == "javascript" or ft == "typescript" then vim.lsp.start(cfg.ts_ls)
                    end
                end,
            })

            -------------------------------------------------
            -- nvim-dap: Python debugpy setup
            -------------------------------------------------
            local dap = require("dap")
            dap.adapters.python = {
                type = "executable",
                command = "python",
                args = { "-m", "debugpy.adapter" },
            }
            dap.configurations.python = {
                {
                    type = "python",
                    request = "launch",
                    name = "Launch file",
                    program = "${file}",
                    pythonPath = function()
                        local venv = os.getenv("VIRTUAL_ENV")
                        if venv then return venv .. "/bin/python" else return "python" end
                    end,
                },
            }

            -------------------------------------------------
            -- nvim-dap-ui setup (after dap loaded)
            -------------------------------------------------
            local dapui_ok, dapui = pcall(require, "dapui")
            if dapui_ok then
                dapui.setup()
                dap.listeners.after.event_initialized["dapui_config"] = function() dapui.open() end
                dap.listeners.before.event_terminated["dapui_config"] = function() dapui.close() end
                dap.listeners.before.event_exited["dapui_config"] = function() dapui.close() end
            end

            -------------------------------------------------
            -- nvim-dap-virtual-text setup
            -------------------------------------------------
            local vt_ok, dap_virtual_text = pcall(require, "nvim-dap-virtual-text")
            if vt_ok then
                dap_virtual_text.setup({
                    enabled = true,
                    enabled_commands = true,
                    highlight_changed_variables = true,
                    show_stop_reason = true,
                    commented = false,
                })
            end

            -------------------------------------------------
            -- Optional keybindings for debugging
            -------------------------------------------------
            vim.fn.sign_define('DapBreakpoint', {text='🛑', texthl='', linehl='', numhl=''})
            vim.api.nvim_set_keymap("n", "<F5>", "<cmd>lua require'dap'.continue()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<F10>", "<cmd>lua require'dap'.step_over()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<F11>", "<cmd>lua require'dap'.step_into()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<F12>", "<cmd>lua require'dap'.step_out()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<Leader>b", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<Leader>B", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Breakpoint condition: '))<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<Leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", { noremap=true, silent=true })
            vim.api.nvim_set_keymap("n", "<Leader>du", "<cmd>lua require'dapui'.toggle()<CR>", { noremap=true, silent=true })

            -------------------------------------------------
            -- nvim-cmp setup
            -------------------------------------------------
            local cmp = require("cmp")
            local luasnip = require("luasnip")

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                    end,
                },
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp.mapping.select_next_item(),
                    ["<S-Tab>"] = cmp.mapping.select_prev_item(),
                    ["<CR>"] = cmp.mapping.confirm({ select = true }),
                    ["<C-Space>"] = cmp.mapping.complete(),
                }),
                sources = cmp.config.sources({
                    { name = "nvim_lsp" },
                    { name = "luasnip" },
                    { name = "dap" }, -- DAP completion
                }, {
                    { name = "buffer" },
                    { name = "path" },
                }),
            })

            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "path" },
                }, {
                    { name = "cmdline" },
                }),
            })
        end,
    },
}

