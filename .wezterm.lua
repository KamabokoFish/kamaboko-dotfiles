-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 135
config.initial_rows = 55
config.color_scheme = 'Ayu Mirage'
config.window_background_opacity = 0.9
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
