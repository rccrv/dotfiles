local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'Dark Pastel'
config.enable_tab_bar = false
config.window_background_opacity = 0.85
config.initial_rows = 34
config.initial_cols = 120

config.font = wezterm.font 'DroidSansMono NF'
config.font_size = 12.0

config.audible_bell = "Disabled"

return config

