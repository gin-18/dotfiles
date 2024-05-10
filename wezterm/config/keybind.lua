local wezterm = require('wezterm')
local act = wezterm.action

local keys = {
  {
    key = 't',
    mods = 'ALT',
    action = act.SpawnTab('DefaultDomain'),
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
