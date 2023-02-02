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

-- reload hammerspoon
hyper:bind({}, 'p', function()
    hs.reload()
end)

-- Open hammerspoon console
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

-- bind 'a' as cmd + shift + m --> switch user in chrome
hyper:bind({}, 'a', function()
    hs.eventtap.keyStroke({'cmd', 'shift'}, 'm')
    hs.eventtap.keyStroke({}, 'return')
    hyper.triggered = true
end)

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


-- Print audio input / output
hyper:bind({}, 'n', function()
    hs.alert.show("Input:      " .. hs.audiodevice.defaultInputDevice():name() .. "\n" .. "Output:  " ..
                      hs.audiodevice.current().name)
end)

-- open aws tunnel
hyper:bind({}, 'n', function()
    -- the below doesn't work. also, using hs.task shouldn't be used for never exiting tasks
    -- hs.execute("aws sso login; ssh -l 5439:main.ci6pf3wvc9tf.eu-west-1.redshift.amazonaws.com:5439 komoot-analytics-ssh-jump-host -n serveraliveinterval=60")
    -- hs.application.launchorfocus('iterm')
    -- hs.eventtap.keystrokes("asd")
end)

-- paste shrug ¯\_(ツ)_/¯
hs.hotkey.bind({'cmd', 'ctrl', 'option'}, 's', function()
    hs.eventtap.keyStrokes("¯\\_(ツ)_/¯")
end)

-- HS loaded notification
hs.alert.show('Config loaded')
