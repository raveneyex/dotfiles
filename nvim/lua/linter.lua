local status, null_ls = pcall(require, "null-ls")
if (not status) then return end

null_ls.setup {
  sources = {
    null_ls.builtins.formatting.prettierd, --prettier
    null_ls.builtins.diagnostics.eslint,   --eslint
  }
}

local prettierStatus, prettier = pcall(require, "prettier")
if (not prettierStatus) then return end

prettier.setup {
  bin = "prettierd",
  filetypes = {
    "css",
    "javascript",
    "javascriptreact",
    "typescript",
    "typescriptreact",
    "json",
    "scss",
    "css",
    "less"
  }
}
