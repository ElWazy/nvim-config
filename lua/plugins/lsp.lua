return {
  "neovim/nvim-lspconfig",
  dependencies = { 'saghen/blink.cmp' },
  config = function()
    local capabilities = require('blink.cmp').get_lsp_capabilities()
    vim.lsp.config('pyright',{
      capabilities = capabilities,
      settings = {
        python = {
          analysis = {
            typeCheckingMode = "basic",
            diagnosticSeverityOverrides = {
              reportUnusedImport = "none",
              reportUnusedVariable = "none",
            },
          },
        },
      }
    })
    vim.lsp.config('ruff',{
      capabilities = capabilities,
    })
    vim.lsp.enable("pyright")
    vim.lsp.enable("ruff")
    vim.lsp.enable("ts_ls")
    vim.lsp.enable('intelephense')
  end,
}
