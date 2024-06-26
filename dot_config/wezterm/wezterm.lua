-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font 'CaskaydiaCove Nerd Font'
-- config.font = wezterm.font 'Cascadia Code PL'
config.font_size = 18
config.color_scheme = 'Classic Dark (base16)'
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false
config.tab_max_width = 80
config.window_padding = {
    left = 0,
    right = 0,
    top = 0,
    bottom = 0
}

config.enable_wayland = false

-- and finally, return the configuration to wezterm
return config