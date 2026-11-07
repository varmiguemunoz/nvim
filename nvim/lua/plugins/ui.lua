return {
  -- Dashboard
  {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,

    opts = {
      dashboard = {
        enabled = true,

        sections = {
          { section = "header" },
          {
            section = "keys",
            gap = 1,
            padding = 1,
          },
          {
            section = "recent_files",
            icon = " ",
            title = "Recent Files",
            padding = 1,
          },
        },

        preset = {
          header = [[
                    ░░░░░░      ░░░░░░
                  ░░░░░░░░░░  ░░░░░░░░░░
                ░░░░░░░░░░░░░░░░░░░░░░░░░░
              ░░░░░░░░░░▒▒▒▒░░▒▒▒▒░░░░░░░░░░
  ░░░░      ░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒░░░░░░
▒▒░░      ░░░░░░▒▒▒▒▒▒▒▒▒▒██▒▒██▒▒▒▒▒▒▒▒▒▒░░░░
▒▒░░    ░░░░░░░░▒▒▒▒▒▒▒▒▒▒████▒▒████▒▒▒▒▒▒▒▒▒▒░░
▒▒▒▒░░░░░░▒▒▒▒▒▒▒▒▒▒▒▒▒▒██████▒▒██████▒▒▒▒▒▒▒▒▒▒
██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██▒▒▒▒██████▓▓██▒▒██████▒▒▓▓██▒▒
████▒▒▒▒▒▒████▒▒▒▒██████████  ██████████▒▒▒▒████
  ████████████████████████      ████████████████
    ██████████████████              ██████████
        ██████████                      ██████
]],

          keys = {
            {
              icon = " ",
              key = "f",
              desc = "Find File",
              action = "<cmd>Telescope find_files<CR>",
            },
            {
              icon = " ",
              key = "n",
              desc = "New File",
              action = "<cmd>enew<CR>",
            },
            {
              icon = " ",
              key = "g",
              desc = "Find Text",
              action = "<cmd>Telescope live_grep<CR>",
            },
            {
              icon = " ",
              key = "r",
              desc = "Recent Files",
              action = "<cmd>Telescope oldfiles<CR>",
            },
            {
              icon = " ",
              key = "c",
              desc = "Config",
              action = "<cmd>edit $MYVIMRC<CR>",
            },
            {
              icon = "󰒲 ",
              key = "l",
              desc = "Lazy",
              action = "<cmd>Lazy<CR>",
            },
            {
              icon = " ",
              key = "q",
              desc = "Quit",
              action = "<cmd>qa<CR>",
            },
          },
        },
      },
    },
  },

  -- Statusline
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      options = {
        theme = "gentleman-kanagawa-blur",
        globalstatus = true,
        icons_enabled = true,
        component_separators = {
          left = "│",
          right = "│",
        },
        section_separators = {
          left = "",
          right = "",
        },
      },

      sections = {
        lualine_a = {
          {
            "mode",
            icon = "󱗞",
          },
        },

        lualine_b = {
          "branch",
          "diff",
        },

        lualine_c = {
          {
            "filename",
            path = 1,
            symbols = {
              modified = " ●",
              readonly = " ",
            },
          },
        },

        lualine_x = {
          "diagnostics",
          "filetype",
        },

        lualine_y = {
          "progress",
        },

        lualine_z = {
          "location",
        },
      },
    },
  },

  -- Floating filename
  {
    "b0o/incline.nvim",
    event = "BufReadPre",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    config = function()
      require("incline").setup({
        window = {
          margin = {
            vertical = 0,
            horizontal = 1,
          },
        },

        hide = {
          cursorline = true,
        },

        render = function(props)
          local filename =
            vim.fn.fnamemodify(
              vim.api.nvim_buf_get_name(props.buf),
              ":t"
            )

          if filename == "" then
            filename = "[No Name]"
          end

          if vim.bo[props.buf].modified then
            filename = filename .. " [+]"
          end

          local icon, color =
            require("nvim-web-devicons").get_icon_color(filename)

          return {
            { icon or " ", guifg = color },
            { " " .. filename },
          }
        end,
      })
    end,
  },

  -- Keymap popup
  {
    "folke/which-key.nvim",
    event = "VeryLazy",

    opts = {
      preset = "classic",
      win = {
        border = "single",
      },
    },
  },
}
