-- Date Handy Dandyness (source: https://medium.com/@jhkuperus/using-current-date-time-anywhere-personal-productivity-45d14dc6547d)

hyper:bind({"cmd"}, "t", function()
    local time = os.date("%Y-%m-%d")
    hs.alert.show(time)
    hs.pasteboard.setContents(time)
end)
