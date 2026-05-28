# Cole.nvim

A port of the stationery-inspired colorscheme Cole

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

**NOTE**: This snippet will only be valid if `nixpkgs` accepts cole-nvim as a package, otherwise you will need to add an overlay with the GitHub repo as an input.

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
