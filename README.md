<div align="center">
  <img height="80" alt="icon" src="https://raw.githubusercontent.com/thekylehuang/cole.nvim/main/.github/images/cole-icon.svg" />
  <h1>cole.nvim</h1>
  <img alt="Preview" src="https://raw.githubusercontent.com/thekylehuang/cole.nvim/main/.github/images/cole-nvim-screenshot.png" />
</div>

## Installation

### With `lazy.nvim`

```lua
{
    "thekylehuang/cole.nvim",
    priority = 1000,
    config = function()
        vim.cmd.colorscheme("cole")
    end,
}
```

### With `vim.pack`

```lua
vim.pack.add({
    "https://github.com/thekylehuang/cole.nvim",
})

vim.cmd.colorscheme("cole")
```

### With `nix-home-manager`

```nix
programs.neovim = {
    enable = true;
    plugins with pkgs.vimPlugins; [
        cole-nvim
    ];
    initLua = ''
        vim.cmd.colorscheme("cole")
    ''
}
```
