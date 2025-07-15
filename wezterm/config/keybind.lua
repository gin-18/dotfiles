local wezterm = require('wezterm')
local act = wezterm.action

local keys = {
  {
    key = 'n',
    mods = 'ALT',
    action = act.SpawnTab('DefaultDomain'),
  },
  {
    key = 't',
    mods = 'ALT',
    action = act.ShowTabNavigator,
  },
  {
    key = 'v',
    mods = 'ALT',
    action = act.SplitPane({
      direction = 'Right',
      size = { Percent = 30 },
    }),
  },
  {
    key = 'h',
    mods = 'ALT',
    action = act.SplitPane({
      direction = 'Down',
      size = { Percent = 50 },
    }),
  },
  {
    key = 'p',
    mods = 'ALT',
    action = act.PaneSelect,
  },
}

-- 切换 tab
for i = 1, 8 do
  table.insert(keys, {
    key = tostring(i),
    mods = 'ALT',
    action = act.ActivateTab(i - 1),
  })
end

return keys
