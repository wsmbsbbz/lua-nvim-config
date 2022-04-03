local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path,
  }
  print "Installing packer close and reopen Neovim..."
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Have packer use a popup window
packer.init {
  display = {
    open_fn = function()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

-- Install your plugins here
return packer.startup(function()
  -- normal
  use "wbthomason/packer.nvim" -- Have packer manage itself
  use "nvim-lua/popup.nvim" -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/plenary.nvim" -- Useful lua functions used ny lots of plugins
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter
  use { "numToStr/Comment.nvim", config = function()
      local status_ok, comment = pcall(require, "comment")
      if not status_ok then return end
      comment.setup()
    end }-- Easily comment stuff
  use "kyazdani42/nvim-web-devicons" -- optional, for file icon
  use "wakatime/vim-wakatime" -- record programming time
  use { "echasnovski/mini.nvim", branch = "stable", config = function()
      local status_ok, surround = pcall(require, "mini.surround")
      if not status_ok then return end
      surround.setup()
    end } -- Collection of minimal, independent, and fast Lua modules
  use "chentau/marks.nvim"
  use "folke/which-key.nvim"

  -- appearance
  use {
    "marko-cerovac/material.nvim",
    config = function() vim.g.material_style = "deep ocean" end
  }
  use { "nvim-lualine/lualine.nvim", config = function ()
      local status_ok, lualine = pcall(require, "lualine")
      lualine.setup()
    end }
  use { "akinsho/bufferline.nvim", config = function()
      local status_ok, bufferline = pcall(require, "bufferline")
      bufferline.setup{}
    end }
  use { "norcalli/nvim-colorizer.lua", config = function()
      local status_ok, colorizer = pcall(require, "colorizer")
      colorizer.setup()
    end }
  use "lukas-reineke/indent-blankline.nvim"
  use "goolord/alpha-nvim"

  -- completions
  use "hrsh7th/nvim-cmp" -- The completion plugin
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lua"
  use "hrsh7th/cmp-nvim-lsp"

  -- snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets" -- a bunch of snippets to use

  -- LSP
  use {
    "neovim/nvim-lspconfig", -- Collection of configurations for the built-in LSP client
    "williamboman/nvim-lsp-installer",
  }

  -- telescope
  use "nvim-telescope/telescope.nvim"

  -- nvim-tree
  use {
    "kyazdani42/nvim-tree.lua",
  }

  -- treesitter
  use {
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  }
  use "p00f/nvim-ts-rainbow"

  -- Git
  use "lewis6991/gitsigns.nvim"

  -- terminal
  use {"akinsho/toggleterm.nvim"}
end)
