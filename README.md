# Neovim Configuration
My personal Neovim setup, optimized for speed and productivity. It includes various plugins for enhanced development experience, LSP support, file management, and customization. The setup leverages `lazy.nvim` for efficient plugin management and includes my preferred keymaps, theme, and various settings for a smooth editing workflow.

## Features
- **Plugin Management**: Using `lazy.nvim` for fast and reliable plugin management.
- **LSP Support**: Full support for language servers including Python, JavaScript, TypeScript, C, and Java.
- **File Explorer**: Integrated with `oil.nvim` for a sleek file explorer.
- **Syntax Highlighting**: Powered by `nvim-treesitter` for modern and efficient syntax highlighting.
- **File Searching**: Fast searching with `telescope.nvim` and fuzzy finder support.
- **Themes**: Beautiful UI with `tokyonight.nvim`.
- **Font**: Hack Nerd Font used for icons and clear fonts.
- **Zsh**: Integrated with `oh-my-zsh` for smooth terminal workflow.

## Installation

1. **Clone the Repository**:

   Clone this configuration into your `~/.config/nvim` directory:

   ```bash
   git clone https://github.com/3akare/neovim-config.git ~/.config/nvim
   ```

2. **Install Dependencies**:

   - Install `nvim` if you don't have it installed.
   - Make sure you have [Nerd Fonts](https://www.nerdfonts.com/) installed for better icon support.

3. **Install Plugins**:

   Once Neovim is opened, run:

   ```vim
   :Lazy sync
   ```

   This will automatically install all the plugins defined in the `lazy.nvim` setup.

4. **Install LSP Servers**:

   The configuration automatically installs and configures LSP servers using `mason.nvim`. Ensure you have the necessary language servers installed.

## Configuration Details

### Plugin List
- **`lazy.nvim`**: Plugin manager used for efficient plugin loading.
- **`lazydev.nvim`**: Plugin for enhancing development experience.
- **`mini.nvim`**: Various small utilities for Neovim.
- **`nvim-lspconfig`**: LSP configuration for various programming languages.
- **`nvim-treesitter`**: Syntax highlighting for various programming languages.
- **`nvim-web-devicons`**: File icons.
- **`oil.nvim`**: File explorer with modern features.
- **`plenary.nvim`**: Utility functions for Neovim plugins.
- **`telescope-fzf-native.nvim`**: Faster searching in `telescope`.
- **`telescope.nvim`**: Fuzzy finder and search interface.
- **`tokyonight.nvim`**: Beautiful Neovim theme.
- **`vim-wakatime`**: Wakatime integration for tracking time spent on coding.

### Appearance
- **Hack Nerd Font**: Required for better icon rendering.
- **Custom Highlighting**: Sets custom highlighting for function names, calls, and variables.
  
  ```vim
  vim.cmd [[ hi @function.builtin guifg = pink ]]
  vim.cmd [[ hi @function.call guifg = cyan ]]
  vim.cmd [[ hi @variable guifg = skyblue ]]
  ```

- **Transparent Background**: Configured to set background transparency for the `Normal` and `NormalFloat` highlights.

  ```vim
  vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
  vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
  ```

### Autocommands
- **Yank Highlight**: When you yank (copy) text, it is briefly highlighted to show the action.

  ```lua
  vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking (copying) text',
    group = vim.api.nvim_create_augroup('kickstarter-highlight-yank', { clear = true }),
    callback = function()
      vim.highlight.on_yank()
    end,
  })
  ```

### Keybindings

- **`<space><space>x`**: Sources the current file.
- **`<space>x`**: Executes Lua code.
- **`<C-b>`**: Opens the file explorer with `oil.nvim`.

## Customization

You can customize this configuration to suit your needs by editing the `init.lua` file. The following settings can be modified:

- **LSP Servers**: Modify the list of language servers in `nvim-lspconfig`.
- **Plugins**: Add or remove plugins as per your development needs.
- **Keymaps**: Change or add more custom keybindings for faster workflow.
- **Appearance**: Modify the theme and highlight settings.

## Notes

- The configuration is designed to work out of the box with minimal setup.
- It uses `nvim-treesitter` for improved syntax highlighting.
- The use of `oil.nvim` provides an intuitive file explorer.
  
---

### License

This configuration is licensed under the MIT License. Feel free to modify it and share it.
