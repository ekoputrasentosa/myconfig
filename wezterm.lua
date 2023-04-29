local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

local toggle_opacity = function (window)
  local overrides = window:get_config_overrides() or {}
  if not overrides.window_background_opacity then
    overrides.window_background_opacity = 0.91
    overrides.macos_window_background_blur = 15
  else
    overrides.window_background_opacity = nil
    overrides.macos_window_background_blur = nil
  end
  window:set_config_overrides(overrides)
end

wezterm.on('toggle-opacity', toggle_opacity)

config.keys = {
  {
    mods = "CMD",
    key = "T",
    action = wezterm.action.EmitEvent 'toggle-opacity',
  }
}

config.native_macos_fullscreen_mode = true
config.window_padding = {
  left = '0.7cell',
  right = '0.5cell',
  top = '0.3cell',
  bottom = '0cell',
}

config.font = wezterm.font('Iosevka Nerd Font')
config.font_size = 13.5
config.adjust_window_size_when_changing_font_size = false
config.color_scheme = 'Monokai Soda'
config.audible_bell = 'Disabled'
config.window_decorations = 'RESIZE|MACOS_FORCE_DISABLE_SHADOW'
config.window_close_confirmation = 'NeverPrompt'
-- config.enable_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.show_new_tab_button_in_tab_bar = false
config.show_tab_index_in_tab_bar = false
config.use_fancy_tab_bar = true
config.max_fps = 120

return config
