local function Notify()
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "❌ Game Not Supported",
        Text = "This Script not supported this game!",
        Duration = 5,
        Icon = "rbxassetid://97402224075138",
    })
end

local Scripts = {
    [97598239454123] = "https://raw.githubusercontent.com/FakeModz/ZeroImpact/refs/heads/main/gag2.lua", -- Grow a Garden 2
    [77085202503540] = "https://raw.githubusercontent.com/FakeModz/ZeroImpact/refs/heads/main/gag2.lua", -- Newbie Server Grow a Garden 2
}

local scriptUrl = Scripts[game.PlaceId]

if not scriptUrl then
    Notify()
end

loadstring(game:HttpGet(scriptUrl))()
