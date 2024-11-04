-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 130
config.initial_rows = 50
config.color_scheme = 'Ayu Mirage'
config.window_background_opacity = 0.95
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}

config.macos_window_background_blur = 50
-- フォントの設定
config.font = wezterm.font("UDEV Gothic 35NF", { weight = "Bold" })
-- フォントサイズの設定
config.font_size = 16.5

-- and finally, return the configuration to wezterm
return config
