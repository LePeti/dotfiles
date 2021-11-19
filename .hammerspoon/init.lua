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

-- Rebind jkli to arrows
arrowKey = function(arrow, modifiers)
    local event = require("hs.eventtap").event
    event.newKeyEvent(modifiers, string.lower(arrow), true):post()
    event.newKeyEvent(modifiers, string.lower(arrow), false):post()
  end

  hyper:bind({}, 'j', function() arrowKey('LEFT', {}); end, nil, function() arrowKey('LEFT', {}); end)
  hyper:bind({}, 'k', function() arrowKey('DOWN', {}); end, nil, function() arrowKey('DOWN', {}); end)
  hyper:bind({}, 'i', function() arrowKey('UP', {}); end, nil, function() arrowKey('UP', {}); end)
  hyper:bind({}, 'l', function() arrowKey('RIGHT', {}); end, nil, function() arrowKey('RIGHT', {}); end)
  hyper:bind({'cmd'}, 'j', function() arrowKey('LEFT', {'cmd'}); end, nil, function() arrowKey('LEFT', {'cmd'}); end)
  hyper:bind({'cmd'}, 'k', function() arrowKey('DOWN', {'cmd'}); end, nil, function() arrowKey('DOWN', {'cmd'}); end)
  hyper:bind({'cmd'}, 'l', function() arrowKey('RIGHT', {'cmd'}); end, nil, function() arrowKey('RIGHT', {'cmd'}); end)
  hyper:bind({'cmd'}, 'i', function() arrowKey('UP', {'cmd'}); end, nil, function() arrowKey('UP', {'cmd'}); end)


hs.alert.show('Config loaded')
