-- Basics for functional programming
local map = function(fn, seq)
  local t = {}
  for k, v in pairs(seq) do
    t[k] = fn(v)
  end
  return t
end

local filter = function(fn, seq)
  local t = {}
  for _, v in ipairs(seq) do
    if fn(v) then
      table.insert(t, v)
    end
  end
  return t
end

local first = function(seq)
  return seq[1]
end


-- Return the buffer handle for the open netrw buffer or nil
local get_netrw_buf = function()
  return first(
    filter(
      function (buf)
        return (vim.api.nvim_buf_is_loaded(buf) and
          vim.api.nvim_buf_get_option(buf, "filetype") == "netrw")
      end,
      vim.api.nvim_list_bufs()))
end


-- Toggle netrw on and off, similar to the :NERDTreeToggle
vim.api.nvim_create_user_command("ToggleExplorer",
  function (_)
    local buf = get_netrw_buf()
    if buf then
      vim.cmd("bwipeout" .. " " ..
        vim.api.nvim_buf_get_name(buf))
    else
      vim.cmd("Lexplore")
    end
  end,
  { nargs = 0 }
)

