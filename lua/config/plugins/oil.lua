return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {}, -- Provide any additional configuration here if needed
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("oil").setup({}) -- Initialize oil.nvim

      -- Map <C-b> to toggle Oil file explorer
      vim.keymap.set("n", "<C-b>", function()
        require("oil").open()
      end, { desc = "Toggle Oil file explorer" })
    end,
  }
}
