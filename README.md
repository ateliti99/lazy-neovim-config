# My Personal Neovim Configuration

This is my personal Neovim configuration, built on top of the excellent [LazyVim](https://github.com/LazyVim/LazyVim) starter template. It includes my preferred keybindings, options, and plugin setups for a productive development environment.

## Installation

To use this configuration, you need to place it in your Neovim configuration directory (usually `~/.config/nvim` on Linux/macOS).

1.  **Backup your existing configuration:**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone this repository:**
    ```bash
    git clone <your-repo-url> ~/.config/nvim
    ```
    *(Replace `<your-repo-url>` with the actual URL of this repository if you have hosted it, otherwise copy the files manually).*

3.  **Start Neovim:**
    ```bash
    nvim
    ```
    Lazy.nvim will automatically bootstrap and install all plugins.

## Main Configurations

### General Options
*   **Indentation:** Configured for 4 spaces (tabstop, shiftwidth, softtabstop) with `expandtab` enabled.

### Keymaps
*   **Insert Mode:** Press `jk` to quickly exit Insert mode (mapped to `<Esc>`).
*   **Command Mode:** Press `;` in Normal mode to enter Command-line mode (mapped to `:`).
*   **Terminal:** Press `<Esc>` to exit Terminal insert mode.

### Plugins & Features
*   **LazyVim Base:** Inherits all the goodness from LazyVim (Treesitter, LSP, Telescope, etc.).
*   **Python Debugging:** Configured with `nvim-dap-python` for debugging Python applications.
    *   `<leader>dPt`: Debug Method
    *   `<leader>dPc`: Debug Class