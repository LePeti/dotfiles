hyper:bind({}, 'g', function()
    hs.osascript.applescriptFromFile('open-fb-group-call-chrome.applescript')
end)

hyper:bind({}, 'v', function()
    hs.osascript.applescriptFromFile('open-fb-calendar-chrome.applescript')
end)

hyper:bind({}, 'b', function()
    hs.osascript.applescriptFromFile('open-fb-daiquery-chrome.applescript')
end)

hyper:bind({}, 'r', function()
    hs.osascript.applescriptFromFile('open-messenger-chrome.applescript')
end)
