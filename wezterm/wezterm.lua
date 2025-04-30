local wezterm = require('wezterm')

local config = wezterm.config_builder()
local keys = require('config.keybind')
local launch = require('config.launch')

-- 快捷键
config.keys = keys

-- 设置字体
config.font = wezterm.font({
  family = 'FiraCode Nerd Font Mono',
  style = 'Normal',
  harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' },
})

-- 设置主题
config.color_scheme = 'catppuccin-mocha'
-- 设置默认启动程序
config.default_prog = launch.default_prog
-- 设置默认启动目录
config.default_cwd = launch.default_cwd
-- 窗口内边距
config.window_padding = {
  left = 6,
  top = 0,
  right = 0,
  bottom = 0,
}

-- 设置tab
config.enable_tab_bar = false

return config
