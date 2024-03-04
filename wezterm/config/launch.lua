local wezterm = require('wezterm')
local platform = require('utils.platform')()

local options = {
  default_prog = {},
  default_cwd = {},
}

if platform.is_linux then
  options.default_prog = { '/bin/zsh' }
  options.default_cwd = '$HOME'
elseif platform.is_win then
  options.default_prog = { 'powershell.exe' }
  options.default_cwd =  'D:\\gin'
end

-- 启动时窗口最大化
if platform.is_win then
  local mux = wezterm.mux
  wezterm.on('gui-startup', function()
    local tab, pane, window = mux.spawn_window{}
    window:gui_window():maximize()
  end)
end

return options
