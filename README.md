# My Lua-Nvim Config

Deeply inspired by [LunarVim/Neovim-from-scratch](https://github.com/LunarVim/Neovim-from-scratch)

## Quickstart

1. Install packer.nvim

```shell
git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim
```

2. Clone this repo

```shell
cd ~/.config/
git clone https://github.com/wsmbsbbz/lua-nvim-config.git
```

3. Rename "lua-nvim-config" to "nvim"

```shell
mv lua-nvim-config nvim
```

4. Install plugins using `packer.nvim`

```shell
nvim nvim/lua/user/plugins.lua
```

Then use vim command `:PackerSync` or `:w`(auto installing) to install plugins.
