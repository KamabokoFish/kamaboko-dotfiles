local wezterm = require 'wezterm'
local mux = wezterm.mux
local config = wezterm.config_builder()


wezterm.on('gui-startup', function(cmd)
  local screen = wezterm.gui.screens().main

  local horizontal_ratio = 0.6
  local vertical_ratio = 0.7

  local win_width = screen.width * horizontal_ratio
  local win_height = screen.height * vertical_ratio

  local tab, pane, window = mux.spawn_window(cmd or {
    position = {
      x = (screen.width - win_width) / 2,
      y = (screen.height - win_height) / 2,
      origin = 'ActiveScreen',
    },
  })

  window:gui_window():set_inner_size(win_width, win_height)

end)


config.color_scheme = 'Ayu Mirage'
config.window_background_opacity = 0.85
-- config.window_decorations = 'RESIZE'

config.window_frame = {
  inactive_titlebar_bg = "none",
  active_titlebar_bg = "none",
}

config.window_background_gradient = {
  colors = { "#0c121f" },
}

config.window_padding = {
  left = 8,
  right = 8,
  top = 8,
  bottom = 8,
}

config.macos_window_background_blur = 30
-- フォントの設定
config.font = wezterm.font("UDEV Gothic 35NF", { weight = "Bold" })
-- フォントサイズの設定
config.font_size = 16

-- config.leader = { key = 'g', mods = 'CTRL', timeout_milliseconds = 1500 }

config.keys = {
  {
    key = '%',
    mods = 'LEADER',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = '"',
    mods = 'LEADER',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
}




-- and finally, return the configuration to wezterm
return config
