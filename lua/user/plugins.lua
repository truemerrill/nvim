
-- Automatically install packer
local fn = vim.fn
local install_path = fn.stdpath("data").."/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
  Packer_Bootstrap = fn.system({
    "git",
    "clone",
    "--depth",
    "1",
    "https://github.com/wbthomason/packer.nvim",
    install_path
  })
  vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads nvim when you save plugins.lua
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]


-- Packer
local status_ok, packer = pcall(require, "packer")
if not status_ok then
  return
end

-- Configure packer to use a popup window
packer.init {
  display = {
    open_fn = function ()
      return require("packer.util").float { border = "rounded" }
    end,
  },
}

return packer.startup(function (use)

  -- Packer
  use "wbthomason/packer.nvim"

  -- An implementation of the Popup API from vim in Neovim
  use "nvim-lua/popup.nvim"

  -- Useful lua functions used ny lots of plugins
  use "nvim-lua/plenary.nvim"

  -- Colorschemes
  use "ellisonleao/gruvbox.nvim"
  use "Mofiqul/vscode.nvim"

  -- Completion
  use "hrsh7th/nvim-cmp"                -- Completion engine
  use "hrsh7th/cmp-buffer"              -- Buffer completion
  use "hrsh7th/cmp-path"                -- Path completion
  use "hrsh7th/cmp-cmdline"             -- Command line completion
  use "saadparwaiz1/cmp_luasnip"        -- Snippet completionn
  use "hrsh7th/cmp-nvim-lsp"            -- LSP completion

  -- Snippets
  use "L3MON4D3/LuaSnip"                -- Snippet engine
  use "rafamadriz/friendly-snippets"    -- Library of snippets

  -- Language server
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"

  -- Telescope
  use "nvim-telescope/telescope.nvim"
  use "nvim-telescope/telescope-media-files.nvim"

  if Packer_Bootstrap then
    require("packer").sync()
  end
end)

