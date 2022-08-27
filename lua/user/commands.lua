-- TODO: consider moving functional stuff to a util.lua

-- -- Basics for functional programming
-- local map = function(fn, seq)
--   local t = {}
--   for k, v in pairs(seq) do
--     t[k] = fn(v)
--   end
--   return t
-- end
-- 
-- local filter = function(fn, seq)
--   local t = {}
--   for _, v in ipairs(seq) do
--     if fn(v) then
--       table.insert(t, v)
--     end
--   end
--   return t
-- end
-- 
-- local first = function(seq)
--   return seq[1]
-- end


-- No longer needed now that we are using nvim-tree

-- -- Return the buffer handle for the open netrw buffer or nil
-- local get_netrw_buf = function()
--   return first(
--     filter(
--       function (buf)
--         return (vim.api.nvim_buf_is_loaded(buf) and
--           vim.api.nvim_buf_get_option(buf, "filetype") == "netrw")
--       end,
--       vim.api.nvim_list_bufs()))
-- end
-- 
-- 
-- -- Toggle netrw on and off, similar to the :NERDTreeToggle
-- vim.api.nvim_create_user_command("ToggleExplorer",
--   function (_)
--     local buf = get_netrw_buf()
--     if buf then
--       vim.cmd("bwipeout" .. " " ..
--         vim.api.nvim_buf_get_name(buf))
--     else
--       vim.cmd("Lexplore")
--     end
--   end,
--   { nargs = 0 }
-- )


-- Toggle arrow key navigation bindings
local arrow_keys_active = true
local opts = { silent = true, noremap = true }

local unmap_arrow_keys = function()
  local mappings = {
    {lhs = "<Left>", msg = "Left arrow disabled. Try h."},
    {lhs = "<Right>", msg = "Right arrow disabled. Try l."},
    {lhs = "<Up>", msg = "Up arrow disabled. Try k."},
    {lhs = "<Down>", msg = "Down arrow disabled. Try j."},
  }

  local message = function(m)
    return ":echo \"" .. m.msg .. "\"<CR>"
  end

  for _, m in ipairs(mappings) do
    vim.api.nvim_set_keymap("n", m.lhs, message(m), opts)
    vim.api.nvim_set_keymap("i", m.lhs, message(m), opts)
    vim.api.nvim_set_keymap("v", m.lhs, message(m), opts)
  end
end

local map_arrow_keys = function()
  local keys = {"<Left>", "<Right>", "<Up>", "<Down>"}
  local modes = {"n", "i", "v"}
  for _, k in ipairs(keys) do
    for _, m in ipairs(modes) do
      vim.api.nvim_del_keymap(m, k)
    end
  end
end

vim.api.nvim_create_user_command("ToggleArrowKeys",
  function (_)
    if arrow_keys_active then
      unmap_arrow_keys()
      arrow_keys_active = false
    else
      map_arrow_keys()
      arrow_keys_active = true
    end
  end,
  { nargs = 0 }
)

