local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/ShadowLibrary.lua"))()

local Main = library:CreateWindow("RS Hub", "Gainsboro")

local InfoTab = Main:CreateTab("Info")
local ScriptsTab = Main:CreateTab("Scripts")

-- === ВКЛАДКА INFO ===
InfoTab:CreateButton("!!! U - Reuploaded !!!", function() end)
InfoTab:CreateButton("LbExU - Limb Extender", function() end)
InfoTab:CreateButton("cfsU - CFrame Speed", function() end)
InfoTab:CreateButton("gazeU - Gaze", function() end)
InfoTab:CreateButton("espU - ESP", function() end)
InfoTab:CreateButton("--- Authors ---", function() end)
InfoTab:CreateButton("       xd bro", function() end)

-- === ВКЛАДКА SCRIPTS ===
ScriptsTab:CreateButton("espU", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/espU.lua"))()
end)

ScriptsTab:CreateButton("gazeU", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/GazeU.lua"))()
end)

ScriptsTab:CreateButton("cfsU", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/cfrSpU.lua"))()
end)

ScriptsTab:CreateButton("Infinity Yield", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

ScriptsTab:CreateButton("LbExU", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/LbEx.lua"))()
end)

ScriptsTab:CreateButton("XVC Hub", function()
    loadstring(game:HttpGet("https://rawscripts.net/raw/Universal-Script-XVC-Hub-150-Games-keyless-47283"))()
end)

ScriptsTab:CreateButton("VD", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/TexRBLX/Roblox-stuff/refs/heads/main/violence-district/script.lua"))()
end)

ScriptsTab:CreateButton("Orion", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/rsXez/RS/refs/heads/main/Orion.lua"))()
end)

ScriptsTab:CreateSlider("Растяг экрана", 10, 100, function(value)
    local stretchValue = value / 100
    getgenv().Resolution = {
        [".gg/scripters"] = stretchValue
    }
    local Camera = workspace.CurrentCamera
    if getgenv().gg_scripters == nil then
        game:GetService("RunService").RenderStepped:Connect(function()
            Camera.CFrame = Camera.CFrame * CFrame.new(0, 0, 0, 1, 0, 0, 0, getgenv().Resolution[".gg/scripters"], 0, 0, 0, 1)
        end)
    end
    getgenv().gg_scripters = "Aori0001"
end)

-- ПОКАЗЫВАЕМ ВКЛАДКИ
InfoTab:Show()
