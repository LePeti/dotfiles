require('dual_caps')
require('watcher')
require('caffeinate')
require('window_movements')
require('app_hotkeys')
require('open_url')
require('window_focus')
require('insert_date')
hs.loadSpoon('PopupTranslateSelection')
hs.loadSpoon('Emojis')

-- Set up Emoji picker hotkey
hyper:bind({}, 'h', function()
    hs.eventtap.keyStroke({'cmd', 'alt', 'ctrl'}, 'h')
    hyper.triggered = true
end)

spoon.Emojis:bindHotkeys({
    toggle = {{'ctrl', 'alt', 'cmd'}, 'h'}
})
---

hs.alert.show('Config loaded')
