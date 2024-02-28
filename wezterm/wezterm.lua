local wezterm = require 'wezterm'

local config = wezterm.config_builder()

-- 设置主题
config.color_scheme = 'catppuccin-mocha'
-- 设置字体
config.font = wezterm.font('FiraCode Nerd Font', {
  weight = 'Medium',
})

-- 设置默认启动程序
config.default_prog = { 'powershell.exe' }
-- 设置默认启动目录
config.default_cwd = 'D:\\gin'
-- 窗口内边距
config.window_padding = {
  left = 0,
  top = 0,
  right = 0,
  bottom = 0,
}

-- 启动时窗口最大化
local mux = wezterm.mux
wezterm.on('gui-startup', function()
  local tab, pane, window = mux.spawn_window{}
  window:gui_window():maximize()
end)

return config
