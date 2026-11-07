return {
  {
    "nvim-tree/nvim-tree.lua",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    cmd = {
      "NvimTreeToggle",
      "NvimTreeFocus",
      "NvimTreeFindFile",
    },

    keys = {
      {
        "<leader>e",
        "<cmd>NvimTreeToggle<CR>",
        desc = "Explorador",
      },
      {
        "<leader>o",
        "<cmd>NvimTreeFindFile<CR>",
        desc = "Encontrar archivo actual",
      },
    },

    opts = {
      view = {
        width = 30,
        side = "left",
      },

      renderer = {
        group_empty = true,
        highlight_git = true,
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },

      filters = {
        dotfiles = false,
      },

      git = {
        enable = true,
        ignore = false,
      },

      diagnostics = {
        enable = false,
      },

      filesystem_watchers = {
        enable = false,
      },

      update_focused_file = {
        enable = true,
      },
    },
  },
}
