return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {
	"folke/lazydev.nvim",
	ft = "lua", -- only load on lua files
	opts = {
	  library = {
	    -- See the configuration section for more details
	    -- Load luvit types when the `vim.uv` word is found
	    { path = "${3rd}/luv/library", words = { "vim%.uv" } },
	  },
	},
      }
    },
    config = function()
       local lspconfig = require("lspconfig")

      -- Python
      lspconfig.pyright.setup({})

      -- JavaScript/TypeScript
      lspconfig.ts_ls.setup({})

      -- C/C++
      lspconfig.clangd.setup({})

      -- Java
      lspconfig.jdtls.setup({})

      -- Lua
      lspconfig.lua_ls.setup({})


      -- Keymaps for LSP
      local opts = { noremap = true, silent = true }
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
      vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
      vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    end
  }
}
