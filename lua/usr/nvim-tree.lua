-- disable netrw at the very start  f your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
-- change default mappings
local keymap_list = {
  { key = { "<CR>", "o", "l", "<2-LeftMouse>" }, action = "edit" },
  { key = "h", action = "close_node" },
  { key = "p", action = "preview" },
  { key = "<C-r>", action = "refresh" },
  { key = "yn", action = "copy_name" },
  { key = "yp", action = "copy_path" },
  { key = "yy", action = "copy_absolute_path" },
  { key = "a", action = "create" },
  { key = "d", action = "remove" },
  { key = "r", action = "rename" },
  { key = "I", action = "toggle_git_ignored" },
  { key = "R", action = "collapse_all" },
  { key = "?", action = "toggle_help" },
}

require 'nvim-tree'.setup {
  view = {
    side = 'left',
    mappings = {
      custom_only = true,
      list = keymap_list
    },
    adaptive_size = true,
    number = true,
    relativenumber = true,
    signcolumn = 'no',
  },
  renderer = {
      add_trailing = false,
      group_empty = false,
      indent_width = 2,
      indent_markers = { enable = true,
      },
  },
  actions = {
    open_file = {
      quit_on_open = true,
      window_picker = {
        enable = true,
      }
    }
  },
}
