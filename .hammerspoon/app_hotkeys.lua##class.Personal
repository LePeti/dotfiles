-- --------------------------------------
-- Application hotkeys
-- --------------------------------------

local applicationHotkeys = {
  c = 'Google Chrome',
  d = '/Applications/fman.app/Contents/MacOS/fman',
  e = 'Steam',
  p = 'Pomello',
  r = 'Rstudio',
  s = 'Sublime Text',
  t = 'iTerm',
  u = 'Preview',
  v = 'Slack',
  -- v = 'VLC',
  -- v = 'Visual Studio Code',
  w = 'Trello',
  y = 'Spotify'
}

for key, app in pairs(applicationHotkeys) do
  hyper:bind({}, key, function()
    hs.application.launchOrFocus(app)
  end)
end

hyper:bind({}, "q", function()
  hs.caffeinate.startScreensaver()
end)
