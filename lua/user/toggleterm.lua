local status_ok, tterm = pcall(require, "toggleterm")
if not status_ok then
  return
end

tterm.setup {}

