hyper:bind({}, 'r', function()
    hs.osascript.applescriptFromFile('open-messenger-chrome.applescript')
end)

hyper:bind({}, 'g', function()
    hs.osascript.applescriptFromFile('open-calendar-chrome.applescript')
end)
