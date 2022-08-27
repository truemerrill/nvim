local status_ok, nvim_tree = pcall(require, "nvim-tree")
if not status_ok then
  return
end

local conf_status_ok, nvim_tree_config = pcall(require, "nvim-tree.config")
if not conf_status_ok then
  return
end

local tree_callback = nvim_tree_config.nvim_tree_callback

nvim_tree.setup {
  disable_netrw = true,
  hijack_netrw = true,
  view = {
    mappings = {
      list = {
        { key = {"l", "<CR>", "o"}, cb = tree_callback "edit" },
        { key = {"h"}, cb = tree_callback "close_node" },
      }
    }
  }
}

