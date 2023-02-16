-- --------------------------------------
-- Caffeinate in menubar
-- --------------------------------------

local caffeine = hs.menubar.new()

local function updateCaffeineDisplay(state)
    local result
    if state then
        caffeine:setIcon("caffeine-active.png")
        hs.alert("Caffeine enabled", 1)
    else
        caffeine:setIcon("caffeine-inactive.png")
        hs.alert("Caffeine disabled", 1)
    end
end

function toggleCaffeine()
    updateCaffeineDisplay(hs.caffeinate.toggle("displayIdle"))
end

function removeCaffeine()
    caffeine:delete()
    caffeine = nil
end

if caffeine then
    caffeine:setClickCallback(toggleCaffeine)
    updateCaffeineDisplay(hs.caffeinate.get("displayIdle"))
end

-- the below sets the behavior when hammerspoon loads
-- 'true' means caffeinate is enabled
hs.caffeinate.set("displayIdle", true)
caffeine:setIcon("caffeine-active.png")
hs.alert("Caffeine enabled", 1)

hyper:bind({}, "1", function()
    toggleCaffeine()
end)
