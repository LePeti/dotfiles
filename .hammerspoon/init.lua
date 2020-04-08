
require('dual_caps')
require('watcher')
require('caffeinate')
require('window_movements')
require('app_hotkeys')
require('open_url')
require('window_focus')

hs.notify.new({title="Hammerspoon", informativeText="Config loaded"}):send():release()
