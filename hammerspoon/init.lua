local appHotkeys = {
    g = "Ghostty",
    s = "System Settings",
    t = "Telegram",
    v = "INCY",
    z = "Zed",
    h = "Hammerspoon",
    -- b = "Safari",
    -- f = "Finder"
}

for key, appName in pairs(appHotkeys) do
    local app = appName

    hs.hotkey.bind({ "alt" }, key, function()
        hs.application.launchOrFocus(app)
    end)
end
