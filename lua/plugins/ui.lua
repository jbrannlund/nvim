return {
    {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v3.x",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
            "MunifTanjim/nui.nvim",
            -- "3rd/image.nvim", -- Optional image support in preview window
        }
    },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8", -- or branch = '0.1.x'
        dependencies = { "nvim-lua/plenary.nvim" }
    },
    {
	"VonHeikemen/fine-cmdline.nvim"
    },
    {
	"akinsho/toggleterm.nvim"
  },
  {
	  "nvim-treesitter/nvim-treesitter"
},
}

