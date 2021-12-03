lastSetDeviceTime = os.time()

function audioDeviceChanged(arg)
    if arg == 'dev#' then
        lastSetDeviceTime = os.time()
    elseif arg == 'dOut' and os.time() - lastSetDeviceTime < 2 then
        hs.alert.show("Current Speaker: " .. hs.audiodevice.current().name)
    end
end

hs.audiodevice.watcher.setCallback(audioDeviceChanged)
hs.audiodevice.watcher.start()
