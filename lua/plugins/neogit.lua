return {
  "NeogitOrg/neogit",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "sindrets/diffview.nvim",
    "nvim-telescope/telescope.nvim",
  },
  opts = {
    disable_hint = true,
    disable_context_highlighting = true,
    disable_insert_on_commit = true,
    commit_editor = {
      spell_check = false,
    }
  },
  keys = {
    {
      "<leader>gs",
      function()
        require('neogit').open({ kind = "split" })
      end,
      desc = "Neogit Status"
    },
  },
}
