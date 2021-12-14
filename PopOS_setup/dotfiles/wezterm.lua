local wezterm = require 'wezterm';

return {
  color_scheme = "Floraverse",
  font = wezterm.font("JetBrains Mono", {weight="Medium"}),
  font_size = 14,
  colors = {
    tab_bar = {
      -- the color of the strip that goes along the top of the window
      background = "#1f4237",
      active_tab = {
          bg_color = "#377863",
          fg_color = "#0e0d15",
          intensity = "Normal",
          underline = "None",
          italic= false,
          strikethrough = false,
        },
      inactive_tab = {
          bg_color = "#224a3d",
          fg_color = "#0e0d15",
          italic = true,
        },
      new_tab = {
        bg_color = "#66ccab",
        fg_color = "#d7f7ed",
        itensity = "Bold",
        },
      },
    },
  }
