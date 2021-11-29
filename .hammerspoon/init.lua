require('dual_caps')
require('watcher')
require('caffeinate')
require('window_movements')
require('app_hotkeys')
require('open_url')
require('window_focus')
require('insert_date')
require('arrow_rebinds')
require('chrome-tab-hotkeys')
require('sound_output_device_change_notif')
hs.loadSpoon('PopupTranslateSelection')
hs.loadSpoon('Emojis')

-- hammerspoon reload & console
hyper:bind({}, 'p', function()
    hs.reload()
end)

hyper:bind({}, 'e', function()
    hs.toggleConsole()
end)

-- Set up Emoji picker hotkey
hyper:bind({}, 'h', function()
    hs.eventtap.keyStroke({'cmd', 'alt', 'ctrl'}, 'h')
    hyper.triggered = true
end)

spoon.Emojis:bindHotkeys({
    toggle = {{'ctrl', 'alt', 'cmd'}, 'h'}
})

-- translate selection
hyper:bind({}, 'x', function()
    spoon.PopupTranslateSelection:translateSelectionPopup('hungarian', 'english')
end)

-- Lock
hyper:bind({}, "q", function()
    hs.caffeinate.startScreensaver()
    hs.spotify.pause()
    hs.audiodevice.defaultOutputDevice():setVolume(0)
end)

hyper:bind({}, 'n', function()
    hs.alert.show(hs.audiodevice.current().name)
end)

-- HS loaded notification
hs.alert.show('Config loaded')
