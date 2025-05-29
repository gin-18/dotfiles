local wezterm = require('wezterm')

local config = wezterm.config_builder()
local keys = require('config.keybind')
local launch = require('config.launch')

-- 快捷键
config.keys = keys

-- 设置字体
config.font = wezterm.font({
  family = 'FiraCode Nerd Font Propo',
  weight = 'Regular',
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
  left = 8,
  top = 0,
  right = 0,
  bottom = 0,
}

-- 设置tab
config.enable_tab_bar = false

-- 渲染优化
config.front_end = 'WebGpu' -- 使用现代渲染后端
config.webgpu_power_preference = 'HighPerformance' -- 使用高性能模式

-- 输入响应优化
config.enable_kitty_keyboard = true -- 启用 kitty 键盘
config.send_composed_key_when_left_alt_is_pressed = true -- 启用左 alt 键发送组合键

-- 设置帧率
config.animation_fps = 60 -- 设置动画帧率
config.max_fps = 60 -- 设置最大帧率

-- 字体渲染优化
config.freetype_load_target = 'Light'

-- 多显示器优化
config.adjust_window_size_when_changing_font_size = false -- 避免调整字体大小时调整窗口大小

return config
