return {
  {
    "lewis6991/gitsigns.nvim",

    event = {
      "BufReadPre",
      "BufNewFile",
    },

    opts = {},
  },

  {
    "kdheepak/lazygit.nvim",

    cmd = {
      "LazyGit",
      "LazyGitConfig",
      "LazyGitCurrentFile",
    },

    keys = {
      {
        "<leader>lg",
        "<cmd>LazyGit<CR>",
        desc = "Abrir LazyGit",
      },
    },

    dependencies = {
      "nvim-lua/plenary.nvim",
    },
  },
}
