return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window
        },
        event = "BufWinEnter"  -- Load neo-tree when a buffer is opened
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8", -- or branch = '0.1.x'
        dependencies = { "nvim-lua/plenary.nvim" },
        cmd = "Telescope"  -- Lazy load on using the Telescope command
    },
    {
        "VonHeikemen/fine-cmdline.nvim",
        cmd = { "FineCmdline" }  -- Load on FineCmdline command usage
    },
    {
        "voldikss/vim-floaterm"
    },
    {
	"ggandor/leap.nvim",
    },
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufRead", "BufNewFile" },  -- Lazy load on file open
        run = ":TSUpdate"  -- Automatically update parsers
    },
}

