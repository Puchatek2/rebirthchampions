game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Welcome to PDS";
    Text = "Our discord server invite is copied to ur clipboard";
})
setclipboard("https://discord.gg/hngpBtZrEv")
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Puchatek2/adasdasdasd/main/mymine.lua"))()
local Window = Library.CreateLib("P/A", "Ocean")

--Tab's

local Credits = Window:NewTab("Credits")
local AutoFarm = Window:NewTab("AutoFarm")
local AutoRebirth = Window:NewTab("Rebirths")
local AutoEgg = Window:NewTab("Auto Eggs")
local Misc = Window:NewTab("Misc")


-- Credits Section

local CreditsSection = Credits:NewSection("Authors")

-- Auto Clicker Section

local AutoClickerSection = AutoFarm:NewSection("Auto Clicker")
local WorldBoostSection = AutoFarm:NewSection("World Boost")
local AFKSection = AutoFarm:NewSection("AFK")

-- Auto Rebirth Section

local AutoRebirthSection = AutoRebirth:NewSection("Rebirth")

-- Auto Egg Section

local OpenEggSection = AutoEgg:NewSection("Open Eggs")
local DeleteSection = AutoEgg:NewSection("AutoDelete")
local CraftPetsSection = AutoEgg:NewSection("Fuse All Pets")

-- Misc Section

local PotionsSection = Misc:NewSection("Potions")
local PortalsSection = Misc:NewSection("Teleport")
local UnlockPortalsSection = Misc:NewSection("Unlock Portals")

--Scripts

CreditsSection:NewButton("Puchatek#5660", "ButtonInfo", function(v)
    print("Clicked")
    setclipboard("Puchatek#5660")
        game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "USER";
    Text = "copied to ur clipboard";
})
end)
CreditsSection:NewButton("Amazonkaaa#6784", "ButtonInfo", function(v)
    print("Clicked")
    setclipboard("Amazonkaaa#6784")
    game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "USER";
    Text = "copied to ur clipboard";
})
end)


AutoClickerSection:NewToggle("AutoFarm", "Just click", function(AutoFarm)
        if AutoFarm then
            getgenv().AutoFarmStart = true
        while wait(0) and getgenv().AutoFarmStart do
            game:GetService("ReplicatedStorage").Events.Click3:FireServer()
            end
    else
            getgenv().AutoFarmStart = false
        while wait(0) and getgenv().AutoFarmStart do
            game:GetService("ReplicatedStorage").Events.Click3:FireServer()
        end
    end
end)

WorldBoostSection:NewToggle("WorldBoost", "WorldBoost", function(WorldBoost)
            if WorldBoost then
            getgenv().WorldBoostStart = true
        while wait(0) and getgenv().WorldBoostStart do
                local args = {
                [1] = "Cave"
            }
            
            game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
            end
    else
            getgenv().WorldBoostStart = false
        while wait(0) and getgenv().WorldBoostStart do
                local args = {
                [1] = "Summer"
            }
            
            game:GetService("ReplicatedStorage").Events.WorldBoost:FireServer(unpack(args))
        end
    end
end)

    local listrebirth = {
        1;2;3;4;5;6;7;8;9;10;
        11;12;13;14;15;16;17;18;19;20;
        21;22;23;24;25;26;27;28;29;30;
    }

    AutoRebirthSection:NewDropdown("Select Rebirths", "Sex", listrebirth, function(RebirthCount)
        getgenv().LiczbaRebirth = RebirthCount
        print(LiczbaRebirth)
    end)

    AutoRebirthSection:NewToggle("Start Rebirth", "sex", function(startrebirth)
        if startrebirth then
            getgenv().startrebirth1 = true
                    while wait() and startrebirth1 do
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(LiczbaRebirth)
            end
        else
            getgenv().startrebirth1 = false
                    while wait() and startrebirth1 do
            game:GetService("ReplicatedStorage").Events.Rebirth:FireServer(LiczbaRebirth)
        end
    end
end)
    
   	
local EggList = {
  		"Basic";"Water";"Lava";"Volcano";"Winter";"Desert";"Atlantis";"Beach";"Forest";"King";"Mythic";"Magma";"Moon";"Cyber";"Magic";"Heaven";"Nuclear";"Void";"Spooky";"Cave";
		}
    
		OpenEggSection:NewDropdown("Select Egg", "DropdownInf", EggList, function(selectegg)
 		getgenv().SelectedEgg1 = selectegg
		end)

		OpenEggSection:NewToggle("One", "ToggleInfo", function(AutoEggs)
		if AutoEggs then
  		getgenv().startautoegg1 = true
		else
  		getgenv().startautoegg1 = false
		end
        
		while wait() and startautoegg1 do
 		 game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(SelectedEgg1, "Single")
		end
		end)

		OpenEggSection:NewToggle("Triple", "ToggleInfo", function(AutoEggs)
		if AutoEggs then
  		getgenv().startautoegg2 = true
		else
  		getgenv().startautoegg2 = false
		end
        
		while wait() and startautoegg2 do
 		 game:GetService("ReplicatedStorage").Functions.Unbox:InvokeServer(SelectedEgg1, "Triple")
		end
		end)
		
	UnlockPortalsSection:NewButton("UnlockPortal", "ButtonInfo", function()
		game:GetService("Workspace").Scripts.Portals.Forest.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Beach.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Atlantis.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Desert.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Winter.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Volcano.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Cube.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Moon.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Cyber.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Magic.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Heaven.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Nuclear.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Void.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Spooky.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Steampunk.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Hell.Unlocked.Value = true
        game:GetService("Workspace").Scripts.Portals.Summer.Unlocked.Value = true
	end)
    CraftPetsSection:NewToggle("Auto Craft", "ToggleInfo", function(CraftAllPets1)
    if CraftAllPets1 then
        getgenv().CraftAllPets = true
        while wait(0) and getgenv().CraftAllPets do
local args = {
    [1] = "CraftAll",
    [2] = {}
}

game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))

end
    else
        getgenv().CraftAllPets = false
        while wait(0) and getgenv().CraftAllPets do
            local args = {
                [1] = "CraftAll",
                [2] = {}
            }
            
            game:GetService("ReplicatedStorage").Functions.Request:InvokeServer(unpack(args))
        end
    end
end)
PortalsSection:NewButton("Forest", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-386.710175, 30.5047722, 175.198593, 1, 0, 0, 0, 1, 0, 0, 0, 1)
end) 
PortalsSection:NewButton("Beach", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-517.284119, 37.3794289, 458.350983, -0.881527901, 0, 0.472132653, 0, 1, 0, -0.472132653, 0, -0.881527901)
end)
PortalsSection:NewButton("Atlantis", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(40.450161, 9.20697689, 675.801208, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
end)
PortalsSection:NewButton("Desert", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(468.551819, 7.06227589, 703.342041, -1.1920929e-07, 0, -1.00000012, 0, 1, 0, 1.00000012, 0, -1.1920929e-07)
end)
PortalsSection:NewButton("Winter", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1035.05212, -45.3936691, 165.007645, -1, 0, 0, 0, 1, 0, 0, 0, -1)
end)
PortalsSection:NewButton("Volcano", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(1044.25806, -34.5096893, 595.829468, 0.454243124, -0, -0.890877783, 0, 1, -0, 0.890877783, 0, 0.454243124)
end)
PortalsSection:NewButton("Moon", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.538025, 36.0676422, -184.185822, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Cyber", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.542877, 37.9760704, -476.731384, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Magic", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-27.0092049, 37.9760704, -478.55072, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Heaven", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-372.538025, 36.067585, -757.216919, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Nuclear", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.473572, 49.873333, -502.209778, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Void", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(259.473572, 49.873333, -777.097168, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Spooky", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-74.9238892, 32.9656105, -757.217468, -0.99772203, 0, 0.0674653724, 0, 1, 0, -0.0674653724, 0, -0.99772203)
end)
PortalsSection:NewButton("Cave", "ButtonInfo", function()
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(420.230927, 11.2841702, -334.455658, 0, 0, -1, 0, 1, 0, 1, 0, 0)
end)

DeleteSection:NewToggle("Common", "ToggleInfo", function(state)
    if state then
        getgenv().DeleteBaisc = true

        local ohString1 = "Common"
        local ohBoolean2 = true
    
    game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    else
        getgenv().DeleteBaisc = false

        local ohString1 = "Common"
        local ohBoolean2 = false
    
        game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    end
end)

DeleteSection:NewToggle("Uncommon", "ToggleInfo", function(state)
    if state then
        getgenv().DeleteBaisc = true

        local ohString1 = "Uncommon"
        local ohBoolean2 = true
    
    game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    else
        getgenv().DeleteBaisc = false

        local ohString1 = "Uncommon"
        local ohBoolean2 = false
    
        game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    end
end)

DeleteSection:NewToggle("Rare", "ToggleInfo", function(state)
    if state then
        getgenv().DeleteBaisc = true

        local ohString1 = "Rare"
        local ohBoolean2 = true
    
    game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    else
        getgenv().DeleteBaisc = false

        local ohString1 = "Rare"
        local ohBoolean2 = false
    
        game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    end
end)

DeleteSection:NewToggle("Epic", "ToggleInfo", function(state)
    if state then
        getgenv().DeleteBaisc = true

        local ohString1 = "Epic"
        local ohBoolean2 = true
    
    game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    else
        getgenv().DeleteBaisc = false

        local ohString1 = "Epic"
        local ohBoolean2 = false
    
        game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    end
end)

DeleteSection:NewToggle("Legendary", "ToggleInfo", function(state)
    if state then
        getgenv().DeleteBaisc = true

        local ohString1 = "Legendary"
        local ohBoolean2 = true
    
    game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    else
        getgenv().DeleteBaisc = false

        local ohString1 = "Legendary"
        local ohBoolean2 = false
    
        game:GetService("ReplicatedStorage").Events.AutoDelete:FireServer(ohString1, ohBoolean2)
    end
end)

AFKSection:NewButton("AFK", "Click to get AFK", function()
local vu = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:connect(function()
   vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
   wait(1)
   vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)

end)
    PotionsSection:NewToggle("x2Potions", "Click to get All Potions", function(state)
        if state then
            getgenv().Start = true
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Luck"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
            end
    else
            getgenv().Start = false
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Luck"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
    end
end)
    PotionsSection:NewToggle("x2Clicks", "Click to get All Potions", function(state)
        if state then
            getgenv().Start = true
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Clicks"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
            end
    else
            getgenv().Start = false
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Clicks"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
    end
end)
    PotionsSection:NewToggle("x2Gems", "Click to get All Potions", function(state)
        if state then
            getgenv().Start = true
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Gems"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
            end
    else
            getgenv().Start = false
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Gems"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
    end
end)
    PotionsSection:NewToggle("x2Rebirths", "Click to get All Potions", function(state)
        if state then
            getgenv().Start = true
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Rebirths"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
            end
    else
            getgenv().Start = false
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2Rebirths"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
    end
end)
    PotionsSection:NewToggle("x2PetXP", "Click to get All Potions", function(state)
        if state then
            getgenv().Start = true
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2PetXP"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
            end
    else
            getgenv().Start = false
        while wait(0) and getgenv().Start do
            local args = {
    [1] = "x2PETXP"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
    end
end)

PotionsSection:NewToggle("x2PetXP", "Click to get All Potions", function(state)
    if state then
        getgenv().Start = true
    while wait(0) and getgenv().Start do
        local args = {
[1] = "x2HatchSpeed"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))
        end
else
        getgenv().Start = false
    while wait(0) and getgenv().Start do
        local args = {
[1] = "x2HatchSpeed"
}

game:GetService("ReplicatedStorage").Events.Potion:FireServer(unpack(args))

end
end
end)
