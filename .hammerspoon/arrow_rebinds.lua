-- Rebind jkli to arrows

-- W/o capslock (hyper)

-- cmd + shift

hs.hotkey.bind({'cmd', 'shift'}, 'j', function()
    hs.eventtap.keyStroke({'cmd', 'shift'}, 'LEFT')
end)

hs.hotkey.bind({'cmd', 'shift'}, 'i', function()
    hs.eventtap.keyStroke({'cmd', 'shift'}, 'UP')
end)

hs.hotkey.bind({'cmd', 'shift'}, 'l', function()
    hs.eventtap.keyStroke({'cmd', 'shift'}, 'RIGHT')
end)

hs.hotkey.bind({'cmd', 'shift'}, 'k', function()
    hs.eventtap.keyStroke({'cmd', 'shift'}, 'DOWN')
end)

-- opt

hs.hotkey.bind({'option'}, 'j', function()
    hs.eventtap.keyStroke({'option'}, 'LEFT')
end)

hs.hotkey.bind({'option'}, 'i', function()
    hs.eventtap.keyStroke({'option'}, 'UP')
end)

hs.hotkey.bind({'option'}, 'l', function()
    hs.eventtap.keyStroke({'option'}, 'RIGHT')
end)

hs.hotkey.bind({'option'}, 'k', function()
    hs.eventtap.keyStroke({'option'}, 'DOWN')
end)

-- opt + shift

hs.hotkey.bind({'option', 'shift'}, 'j', function()
    hs.eventtap.keyStroke({'option', 'shift'}, 'LEFT')
end)

hs.hotkey.bind({'option', 'shift'}, 'i', function()
    hs.eventtap.keyStroke({'option', 'shift'}, 'UP')
end)

hs.hotkey.bind({'option', 'shift'}, 'l', function()
    hs.eventtap.keyStroke({'option', 'shift'}, 'RIGHT')
end)

hs.hotkey.bind({'option', 'shift'}, 'k', function()
    hs.eventtap.keyStroke({'option', 'shift'}, 'DOWN')
end)

-- opt + cmd

hs.hotkey.bind({'option', 'cmd'}, 'j', function()
    hs.eventtap.keyStroke({'option', 'cmd'}, 'LEFT')
end)

hs.hotkey.bind({'option', 'cmd'}, 'i', function()
    hs.eventtap.keyStroke({'option', 'cmd'}, 'UP')
end)

hs.hotkey.bind({'option', 'cmd'}, 'l', function()
    hs.eventtap.keyStroke({'option', 'cmd'}, 'RIGHT')
end)

hs.hotkey.bind({'option', 'cmd'}, 'k', function()
    hs.eventtap.keyStroke({'option', 'cmd'}, 'DOWN')
end)

-- With capslock (hyper)

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
hyper:bind({'shift'}, 'j', function() arrowKey('LEFT', {'shift'}); end, nil, function() arrowKey('LEFT', {'shift'}); end)
hyper:bind({'shift'}, 'k', function() arrowKey('DOWN', {'shift'}); end, nil, function() arrowKey('DOWN', {'shift'}); end)
hyper:bind({'shift'}, 'l', function() arrowKey('RIGHT', {'shift'}); end, nil, function() arrowKey('RIGHT', {'shift'}); end)
hyper:bind({'shift'}, 'i', function() arrowKey('UP', {'shift'}); end, nil, function() arrowKey('UP', {'shift'}); end)
-- hyper:bind({'cmd', 'shift'}, 'j', function() arrowKey('LEFT', {'cmd', 'shift'}); end, nil, function() arrowKey('LEFT', {'cmd', 'shift'}); end)
-- hyper:bind({'cmd', 'shift'}, 'k', function() arrowKey('DOWN', {'cmd', 'shift'}); end, nil, function() arrowKey('DOWN', {'cmd', 'shift'}); end)
-- hyper:bind({'cmd', 'shift'}, 'l', function() arrowKey('RIGHT', {'cmd', 'shift'}); end, nil, function() arrowKey('RIGHT', {'cmd', 'shift'}); end)
-- hyper:bind({'cmd', 'shift'}, 'i', function() arrowKey('UP', {'cmd', 'shift'}); end, nil, function() arrowKey('UP', {'cmd', 'shift'}); end)
-- hyper:bind({'option'}, 'j', function() arrowKey('LEFT', {'option'}); end, nil, function() arrowKey('LEFT', {'option'}); end)
-- hyper:bind({'option'}, 'k', function() arrowKey('DOWN', {'option'}); end, nil, function() arrowKey('DOWN', {'option'}); end)
-- hyper:bind({'option'}, 'l', function() arrowKey('RIGHT', {'option'}); end, nil, function() arrowKey('RIGHT', {'option'}); end)
-- hyper:bind({'option'}, 'i', function() arrowKey('UP', {'option'}); end, nil, function() arrowKey('UP', {'option'}); end)
-- hyper:bind({'option', 'shift'}, 'j', function() arrowKey('LEFT', {'option', 'shift'}); end, nil, function() arrowKey('LEFT', {'option', 'shift'}); end)
-- hyper:bind({'option', 'shift'}, 'k', function() arrowKey('DOWN', {'option', 'shift'}); end, nil, function() arrowKey('DOWN', {'option', 'shift'}); end)
-- hyper:bind({'option', 'shift'}, 'l', function() arrowKey('RIGHT', {'option', 'shift'}); end, nil, function() arrowKey('RIGHT', {'option', 'shift'}); end)
-- hyper:bind({'option', 'shift'}, 'i', function() arrowKey('UP', {'option', 'shift'}); end, nil, function() arrowKey('UP', {'option', 'shift'}); end)
-- hyper:bind({'option', 'cmd'}, 'j', function() arrowKey('LEFT', {'option', 'cmd'}); end, nil, function() arrowKey('LEFT', {'option', 'cmd'}); end)
-- hyper:bind({'option', 'cmd'}, 'k', function() arrowKey('DOWN', {'option', 'cmd'}); end, nil, function() arrowKey('DOWN', {'option', 'cmd'}); end)
-- hyper:bind({'option', 'cmd'}, 'l', function() arrowKey('RIGHT', {'option', 'cmd'}); end, nil, function() arrowKey('RIGHT', {'option', 'cmd'}); end)
-- hyper:bind({'option', 'cmd'}, 'i', function() arrowKey('UP', {'option', 'cmd'}); end, nil, function() arrowKey('UP', {'option', 'cmd'}); end)
