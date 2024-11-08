local wezterm = require('wezterm')

local config = wezterm.config_builder()
local keys = require('config.keybind')
local launch = require('config.launch')

-- 快捷键
config.keys = keys

-- 设置主题
config.color_scheme = 'catppuccin-mocha'
-- 设置字体
-- config.font = wezterm.font('FiraCode Nerd Font', {
--   weight = 'Medium',
-- })

-- 设置默认启动程序
config.default_prog = launch.default_prog
-- 设置默认启动目录
config.default_cwd = launch.default_cwd
-- 窗口内边距
config.window_padding = {
  left = 0,
  top = 0,
  right = 0,
  bottom = 0,
}

-- 设置tab
config.use_fancy_tab_bar = false
config.colors = {
  tab_bar = {
    background = '#45475a',
    active_tab = {
      bg_color = '#89b4fa',
      fg_color = '#1e1e2e',
    },
    inactive_tab = {
      bg_color = '#181825',
      fg_color = '#a6adc8',
    },
    inactive_tab_hover = {
      bg_color = '#313244',
      fg_color = '#a6adc8',
    },
    new_tab = {
      bg_color = '#181825',
      fg_color = '#a6adc8',
    },
    new_tab_hover = {
      bg_color = '#313244',
      fg_color = '#a6adc8',
    },
  },
}

return config
