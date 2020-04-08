-- --------------------------------------
-- URL hotkeys
-- --------------------------------------

local UrlHotkeys = {
  ["2"] = 'https://docs.google.com/spreadsheets/d/1p3BJonqcb7JOPnKtByMr4jZiwv-Q0lhZU8eeYzpci8Q/edit?usp=sharing',
  ["3"] = 'https://git.emarsys.net/',
  ["4"] = 'https://github.com/emartech',
  ["5"] = 'https://console.cloud.google.com/home/dashboard?project=ems-data-playground',
  ["6"] = 'https://emarsys.jira.com/wiki/spaces/DATA',
  ["7"] = 'https://trello.com/b/vPDFaP57/ai-research-tasks'
  -- ["8"] = 'https://github.com/emartech',
  -- ["9"] = 'https://github.com/emartech'
}

for key, url in pairs(UrlHotkeys) do
  hyper:bind({}, key, function()
    hs.urlevent.openURL(url)
  end)
end
