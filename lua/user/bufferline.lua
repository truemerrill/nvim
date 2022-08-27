local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
  return
end

bufferline.setup {
  options = {
    right_mouse_command = "Bdelete! %d",
    always_show_bufferline = false,
    tab_size = 21,
    offsets = { { filetype = "NvimTree", text = "", padding = 1 } }
  }
  -- Not sure why I can't make this pretty like everyone else.
  -- Maybe I should just embrace the Unix aesthetic
  
  -- highlights = {
  --   fill = {
  --     fg = { attribute = "fg", highlight = "#ff0000" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   background = {
  --     fg = { attribute = "fg", highlight = "Tabline" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   buffer = {
  --     fg = {attribute='fg',highlight='#ff0000'},
  --     bg = {attribute='bg',highlight='Tabline'},
  --     italic = true
  --     },

  --   buffer_selected = {
  --     fg = {attribute='fg',highlight='#ff0000'},
  --     bg = {attribute='bg',highlight='Tabline'},
  --   },

  --   buffer_visible = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --     italic = true
  --   },

  --   close_button = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   close_button_visible = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   close_button_selected = {
  --     fg = {attribute='fg',highlight='TabLineSel'},
  --     bg ={attribute='bg',highlight='TabLineSel'}
  --   },

  --   tab_selected = {
  --     fg = { attribute = "fg", highlight = "Normal" },
  --     bg = { attribute = "bg", highlight = "Normal" },
  --   },

  --   tab = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "TabLine" },
  --   },

  --   tab_close = {
  --     fg = { attribute = "fg", highlight = "TabLineSel" },
  --     bg = { attribute = "bg", highlight = "Normal" },
  --   },

  --   duplicate_selected = {
  --     fg = { attribute = "fg", highlight = "TabLineSel" },
  --     bg = { attribute = "bg", highlight = "TabLine" },
  --   },

  --   duplicate_visible = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   duplicate = {
  --     fg = { attribute = "fg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   modified = {
  --     fg = { attribute = "fg", highlight = "Character" },
  --     bg = { attribute = "bg", highlight = "Tabline" },
  --   },

  --   modified_selected = {
  --     fg = { attribute = "fg", highlight = 'Character' },
  --     bg = { attribute = "bg", highlight = "Tabline" },
  --   },

  --   modified_visible = {
  --     fg = { attribute = "fg", highlight = "#A3BE8C" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   separator = {
  --     fg = { attribute = "bg", highlight = "TabLine" },
  --     bg = { attribute = "bg", highlight = "none" },
  --   },

  --   separator_selected = {
  --     fg = { attribute = "bg", highlight = "Tabline" },
  --     bg = { attribute = "bg", highlight = "Tabline" },
  --   },

  --   separator_visible = {
  --     fg = {attribute='bg',highlight='TabLine'},
  --     bg = {attribute='bg',highlight='TabLine'}
  --   },

  --   indicator_selected = {
  --     fg = { attribute = "fg", highlight = "LspDiagnosticsDefaultHint" },
  --     bg = { attribute = "bg", highlight = "Tabline" },
  --   },
  -- }
}

