local appHotkeys = {
    g = "Ghostty",
    s = "System Settings",
    t = "Telegram",
    v = "v2RayTun",
    z = "Zed",
    b = "Safari",
    h = "Hammerspoon"
}

for key, appName in pairs(appHotkeys) do
    local app = appName

    hs.hotkey.bind({ "alt" }, key, function()
        hs.application.launchOrFocus(app)
    end)
end
