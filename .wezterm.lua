-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- config.color_scheme = 'Gooey (Gogh)'
config.color_scheme = 'Everforest Dark (Gogh)'
config.window_background_opacity = 0.97
-- フォントの設定
config.font = wezterm.font("UDEV Gothic 35NF", {weight="Bold"})
-- フォントサイズの設定
config.font_size = 17

-- and finally, return the configuration to wezterm
return config