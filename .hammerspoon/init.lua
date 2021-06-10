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

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send()
