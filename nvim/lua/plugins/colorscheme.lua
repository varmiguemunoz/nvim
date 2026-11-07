return {
  {
    "Gentleman-Programming/gentleman-kanagawa-blur",
    name = "gentleman-kanagawa-blur",
    lazy = false,
    priority = 1000,

    config = function()
      require("gentleman_kanagawa_blur").setup({
        variant = "blur",
      })

      vim.cmd.colorscheme("gentleman-kanagawa-blur")
    end,
  },
}
