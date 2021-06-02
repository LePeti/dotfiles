require('dual_caps')
require('watcher')
require('caffeinate')
require('window_movements')
require('app_hotkeys')
require('open_url')
require('window_focus')
hs.loadSpoon("PopupTranslateSelection")

hyper:bind({}, 'h', function()
  hs.eventtap.keyStroke({'cmd','alt','ctrl'}, 'h')
  hyper.triggered = true
end)

-- spoon.PopupTranslateSelection:bindHotkeys(
--    {
--     translate_to_en = { { "ctrl", "alt", "cmd" }, "e" },
--     translate_to_de = { { "ctrl", "alt", "cmd" }, "d" },
--     translate_to_es = { { "ctrl", "alt", "cmd" }, "s" },
--     translate_de_en = { { "shift", "ctrl", "alt", "cmd" }, "e" },
--     translate_en_de = { { "shift", "ctrl", "alt", "cmd" }, "d" },
--  }
-- )

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()
