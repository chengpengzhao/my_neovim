require('bufferline').setup {
  options = {
    numbers = function(opts)
      return string.format('%s', opts.ordinal)
    end,
    diagnostics = false,
    show_buffer_close_icons = false,
    show_close_icon = false,
    max_name_length = 80,
    offsets = {{
    filetype = "NvimTree",
    text = "File Explorer",
    highlight = "Direct ry",
    text_align = "left"
}}
  },
}
