local appHotkeys = {
    s = "System Settings",
    m = "Telegram",
    t = "Ghostty",
    b = "Search",
    e = "Zed",
    h = "Hammerspoon",
    o = "Obsidian",
    f = "Finder"
}

for key, appName in pairs(appHotkeys) do
    local app = appName

    hs.hotkey.bind({ "alt" }, key, function()
        hs.application.launchOrFocus(app)
    end)
end
