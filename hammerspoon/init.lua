local appHotkeys = {
    g = "Ghostty",
    s = "System Settings",
    t = "Telegram",
    v = "v2RayTun",
    z = "Zed",
}

for key, appName in pairs(appHotkeys) do
    local app = appName

    hs.hotkey.bind({ "alt" }, key, function()
        hs.application.launchOrFocus(app)
    end)
end
