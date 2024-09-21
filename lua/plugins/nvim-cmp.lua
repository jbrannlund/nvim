return {
    'hrsh7th/nvim-cmp',
    dependencies = {
        'hrsh7th/cmp-nvim-lsp',
        'L3MON4D3/LuaSnip',
        'saadparwaiz1/cmp_luasnip',  -- Optional: for LuaSnip support in nvim-cmp
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
        'hrsh7th/cmp-cmdline',
        'neovim/nvim-lspconfig',  -- Ensure lspconfig is included
    },
    config = function()
        local cmp = require('cmp')
        local lspconfig = require('lspconfig')
        local luasnip = require('luasnip')

        cmp.setup {
            snippet = {
                expand = function(args)
                    luasnip.lsp_expand(args.body)
                end,
            },
            mapping = {
                ['<Tab>'] = cmp.mapping.select_next_item(),
                ['<S-Tab>'] = cmp.mapping.select_prev_item(),
                ['<C-d>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm { select = true },
            },
            sources = {
                { name = 'nvim_lsp' },
                { name = 'luasnip' },
                { name = 'buffer' },
                { name = 'path' },
            },
        }

        -- Setup mason
        require('mason').setup()

        -- Configure LSP servers
        require('mason-lspconfig').setup {
            ensure_installed = { 'lua_ls', 'pyright' },
        }

        -- Example LSP server setup
        lspconfig.lua_ls.setup {
            on_attach = function(client, bufnr)
                -- Custom on_attach code here
            end,
        }

        lspconfig.pyright.setup {
            on_attach = function(client, bufnr)
                -- Custom on_attach code here
            end,
        }
    end,
}

