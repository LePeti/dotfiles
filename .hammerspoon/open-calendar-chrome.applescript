to openUrlInChrome(URL_)
    tell application "Google Chrome"
        repeat with w in (windows)
            set j to 0
            repeat with t in (tabs of w)
                set j to j + 1
                if URL of t contains URL_ then
                    set (active tab index of w) to j
                    set index of w to 1
                    delay 0.05
                    do shell script "open -a Google\\ Chrome --args --profile-directory=Profile\\ 2"
                    return
                end if
            end repeat
        end repeat
        tell window 1 to open location URL_
    end tell
end openUrlInChrome

openUrlInChrome("https://calendar.google.com/")
