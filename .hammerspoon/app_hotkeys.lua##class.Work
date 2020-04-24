-- --------------------------------------
-- Application hotkeys
-- --------------------------------------

local applicationHotkeys = {
  b = "BigQuery",
  c = 'Google Chrome',
  d = '/Applications/fman.app/Contents/MacOS/fman',
  o = 'Microsoft Outlook',
  p = 'pomello',
  z = 'zoom.us',
  -- r = '/Applications/RStudio.app/Contents/MacOS/RStudio',
  r = "Rstudio-Chrome",
  s = 'Sublime Text',
  t = 'iTerm',
  u = 'Visual Studio Code',
  v = 'Slack',
  y = 'Spotify',
  w = 'trello'
  -- u = 'Preview',
  -- e = 'Evernote'
  -- a = 'iTerm',
  -- g = 'Google Chrome',
  -- e = 'PyCharm'
  -- w = 'Microsoft Word',
  -- x = 'Microsoft Excel',
  -- i = 'Microsoft Powerpoint'
}

for key, app in pairs(applicationHotkeys) do
  hyper:bind({}, key, function()
    if app == "Rstudio-Chrome" then
        hs.osascript.applescriptFromFile("Rstudio-Chrome.applescript")
    elseif app == "BigQuery" then
        hs.osascript.applescriptFromFile("bigquery.applescript")
    elseif app == "YouTube Music" then
        hs.osascript.applescriptFromFile("ym.applescript")
    elseif app == "Toggl" then
        hs.osascript.applescriptFromFile("toggl.applescript")
    else
        hs.application.launchOrFocus(app)
    end
  end)
end
