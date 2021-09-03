--General Options UPDATED
local ezlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Hub/dev/Modules/EzLib.lua", true))()

local mainGUI = ezlib.create("General Options Rework");
local main = mainGUI.newTab("Main Options");
local misc = mainGUI.newTab("Misc");
local credit = mainGUI.newTab("Credits");
mainGUI.openTab(main);

--Main Scripts
main.newTitle("Main Scripts");
main.newDiv();

main.newButton("Aimbot", function()
        loadstring(game:HttpGet("https://raw.githubusercontent.com/Herrtt/AimHot-v8/master/Main.lua", true))()
     print("Loaded");
end)

main.newButton("ESP", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
print("Loaded");
end)

local dropdown = main.newDropdown("Teleport To Selected Player", game.Players.LocalPlayer.Name, game.Players:GetPlayers(), function(playerName)
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =  game.Players[playerName].Character.HumanoidRootPart.CFrame * CFrame.new(0,2,1)
    print(playerName)
end)
local function updateDropdown()
    dropdown.changeData(game.Players:GetPlayers());
end
game.Players.PlayerAdded:Connect(updateDropdown);
game.Players.PlayerRemoving:Connect(updateDropdown);


main.newSlider("WalkSpeed", 16, 16, 200, function(state)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = state
print(state);
end)
main.newSlider("Jump-Power", 50, 50, 250, function(state)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = state
    print(state)
end)

main.newButton("Noclip (Hold V)", function()
    game:getService("RunService"):BindToRenderStep("",0,function()
        if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
        if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.V) then
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
        print("Worked");
    end
    end)
end)

main.newCheckbox("Infinite Jump", false, function(state)
    InfiniteJumpEnabled = state
    game:GetService("UserInputService").JumpRequest:connect(function(state)
	        if InfiniteJumpEnabled then
	                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                    print("yes cool");
                end
        end)
end)



--Misc Scripts

misc.newTitle("Misc Scripts");
misc.newDiv();

misc.newButton("Rejoin The Game", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
print("Coolio");
end)

misc.newButton("Reset Character", function ()
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
print("Uhm okay?");
end)

misc.newButton("RTX Graphics", function()
    loadstring(game:HttpGet("https://schoolsuck.000webhostapp.com/rgebuildrelease.lua"))()
end)

misc.newButton("BTools", function()
    local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    tool3.BinType = "Hammer"
print("end");
end)


misc.newButton("Destroy Menu", function()
game.CoreGui.EzExc:destroy()
print("Destroyed");
end)
    
misc.newCheckbox("Bounding Boxes", false, function(BillTheBoolean)
    settings():GetService("RenderSettings").ShowBoundingBoxes = BillTheBoolean
    end)
    

misc.newSlider("Saturation", 0, 0, 100, function(Saturation)
    game.Lighting.ColorCorrection.Saturation = Saturation
    end)


--Credits
credit.newTitle("Credits");
credit.newDiv();

credit.newButton("Created By: tgf71306", function()
end)

credit.newButton("https://discord.gg/wmuCnApm6s", function()
setclipboard("https://discord.gg/wmuCnApm6s")
game.StarterGui:SetCore("SendNotification", {
    Title = "Copied Discord Link:"; 
    Text = "https://discord.gg/wmuCnApm6s"; 
    Button1 = "";  
    setclipboard("");
})
print("Copied!");
end)
