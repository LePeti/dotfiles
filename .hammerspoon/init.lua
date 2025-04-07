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

hs.loadSpoon("SpoonInstall")

spoon.SpoonInstall:andUse("PopupTranslateSelection")

-- reload hammerspoon
hyper:bind({}, 'p', function()
    hs.reload()
end)

-- bind hyper + 'a' as cmd + shift + m --> switch user in chrome
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
    -- hs.audiodevice.defaultOutputDevice():setVolume(0)
end)


-- Print audio input / output
hyper:bind({}, 'n', function()
    hs.alert.show("Input:      " .. hs.audiodevice.defaultInputDevice():name() .. "\n" .. "Output:  " ..
                      hs.audiodevice.current().name)
end)

-- paste shrug ¯\_(ツ)_/¯
hyper:bind({"cmd"}, "s", function()
    hs.eventtap.keyStrokes("¯\\_(ツ)_/¯", hs.application.frontmostApplication())
end)

-- paste my email address
hyper:bind({"cmd"}, "e", function()
    hs.eventtap.keyStrokes("lukacs.peter.andras@gmail.com", hs.application.frontmostApplication())
end)

-- HS loaded notification
hs.alert.show('Config loaded')