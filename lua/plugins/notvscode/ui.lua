return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        -- Remove the cmd or event for now
        config = function()
            require("neo-tree").setup()
        end,
    },
    {
        "nvim-lua/plenary.nvim",
    },
    {
        "nvim-tree/nvim-web-devicons",
    },
    {
        "MunifTanjim/nui.nvim",
    },
    {
        "max397574/startup.nvim",
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",  -- or branch = '0.1.x'
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "Telescope",  -- Lazy load on using the Telescope command
    },
    {
        "VonHeikemen/fine-cmdline.nvim",
        cmd = { "FineCmdline" },  -- Load on FineCmdline command usage
    },
    {
        "voldikss/vim-floaterm",
    },
    {
        "ggandor/leap.nvim",
    },
    {
        "kevinhwang91/nvim-ufo",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufRead", "BufNewFile" },  -- Lazy load on file open
        run = ":TSUpdate",  -- Automatically update parsers
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        config = function()
            require("ibl").setup()  -- Adjusted to call ibl's setup function
        end,
    },
    {
        "startup-nvim/startup.nvim",
        dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
        config = function()
            require "startup".setup()
        end,
    }
}

