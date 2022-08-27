local npairs_status_ok, npairs = pcall(require, "nvim-autopairs")
if not npairs_status_ok then
  return
end

-- We'll roll with the default setup for now
npairs.setup { }

-- Needed to handle cmp
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
  return
end

local cmp_pairs_status_ok, cmp_pairs = pcall(require,
  "nvim-autopairs.completion.cmp")
if not cmp_pairs_status_ok then
  return
end

cmp.event:on(
  "confirm_done",
  cmp_pairs.on_confirm_done()
)

