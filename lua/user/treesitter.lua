local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
  return
end

configs.setup({
  ensure_installed = "all",
  highlight = {
    enable = true,
    disable =  {},    -- List of languages to be ignored
  },
  autopairs = {
    enable = true
  },
  indent = {
    enable = true,
    disable = {}      -- List of languages to be ignored
  }
})

