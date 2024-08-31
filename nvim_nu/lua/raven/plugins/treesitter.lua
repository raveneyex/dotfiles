return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },
  config = function()
    local treesitter = require("nvim-treesitter.configs")
    
    treesitter.setup({
      highlight = { 
        enable = true
      },
      indent = { 
        enable = true
      },
      autotag = {
        enable = true
      },
      ensure_installed = {
        "bash",
        "git_config",
        "git_rebase",
        "gitattributes",
        "gitcommit",
        "gitignore",
        "http",
        "javascript",
        "json",
        "json5",
        "lua",
        "regex",
        "sql",
        "css",
        "html",
        "markdown",
        "markdown_inline",
        "typescript",
        "tsx",
        "yaml",
        "vim",
        "svelte",
        "graphql",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}
