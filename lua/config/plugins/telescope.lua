return {
  'nvim-telescope/telescope.nvim',
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
  },
  config = function ()
    -- find files
    vim.keymap.set("n", "<space>fd", require("telescope.builtin").find_files)

    --find files within the .git folder
    vim.keymap.set("n", "<space>fg", require("telescope.builtin").git_files)

    -- find files with specified word
    vim.keymap.set("n", "<space>ps", function()
      require("telescope.builtin").grep_string({ search = vim.fn.input("Grep > ") })
    end)

    -- find files in nvim config folder
    vim.keymap.set("n", "<space>en", function ()
      require("telescope.builtin").find_files {
	cwd = vim.fn.stdpath("config")
      }
    end)
  end
}
