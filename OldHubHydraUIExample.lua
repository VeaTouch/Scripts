local UILib = loadstring(game:HttpGet('https://raw.githubusercontent.com/StepBroFurious/Script/main/HydraHubUi.lua'))()
local Window = UILib.new("RS Hub", game.Players.LocalPlayer.UserId, "Owner")

-- ОДНА ВКЛАДКА С 4 СУБВКЛАДКАМИ
local MainCategory = Window:Category("Main", "http://www.roblox.com/asset/?id=8395747586")

-- Субвкладка 1: Combat
local CombatButton = MainCategory:Button("Combat", "http://www.roblox.com/asset/?id=8395747586")
local CombatSection = CombatButton:Section("Combat", "Left")
CombatSection:Button({Title = "Kill All", ButtonName = "EXECUTE", Description = ""}, function() print("Kill All!") end)

-- Субвкладка 2: Movement
local MovementButton = MainCategory:Button("Movement", "http://www.roblox.com/asset/?id=8395747586")
local MovementSection = MovementButton:Section("Movement", "Left")
MovementSection:Button({Title = "Fly", ButtonName = "TOGGLE", Description = ""}, function() print("Fly!") end)

-- Субвкладка 3: Visual
local VisualButton = MainCategory:Button("Visual", "http://www.roblox.com/asset/?id=8395747586")
local VisualSection = VisualButton:Section("Visual", "Left")
VisualSection:Button({Title = "ESP", ButtonName = "TOGGLE", Description = ""}, function() print("ESP!") end)

-- Субвкладка 4: Utility
local UtilityButton = MainCategory:Button("Utility", "http://www.roblox.com/asset/?id=8395747586")
local UtilitySection = UtilityButton:Section("Utility", "Left")
UtilitySection:Button({Title = "Server Hop", ButtonName = "JOIN", Description = ""}, function() print("Server Hop!") end)

print("✅ RS Hub готов!")
