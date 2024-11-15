return {
  {
    "stevearc/conform.nvim",
    event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
      },
    },
  },

  {
    "https://gitlab.com/itaranto/plantuml.nvim",
    version = "*",
    event = "VimEnter",
    config = function()
      require("plantuml").setup {
        renderer = {
          type = "image",
          options = {
            split_cmd = "vsplit",
            prog = "feh",
            dark_mode = false,
            format = nil, -- Allowed values: nil, 'png', 'svg'.
          },
        },
        render_on_write = true,
      }
    end,
  },

  { "nvchad/volt", lazy = true },
  { "nvchad/menu", lazy = true },
}
