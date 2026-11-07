
return {
  {
    "folke/todo-comments.nvim",
    event = "VeryLazy",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    opts = {},
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    keys = {
      {
        "<leader>z",
        "<cmd>ZenMode<CR>",
        desc = "Zen Mode",
      },
    },
    opts = {
      window = {
        width = 100,
      },
      plugins = {
        gitsigns = true,
        tmux = true,
      },
    },
  },
}

