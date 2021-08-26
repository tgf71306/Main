--Yep
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("Arsenal  Created by tgf71306#1317", "Midnight")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")

--Scripts

MainSection:NewButton("Aimbot (Hold right click)", "Legit the name", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ygp8Enye"))()
end)


MainSection:NewButton("Esp", "Its ESP bud what else do you want", function(v)
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
end)

MainSection:NewButton("Redeem All Active Codes", "Redeem all the active codes", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/Saturn-Scripts/Saturn/main/RedeemAllCodes.lua", true))()
end)

MiscSection:NewKeybind("Toggle UI Key", "Opens and closes the ui with the selected key.", Enum.KeyCode.F, function()
	Library:ToggleUI()
end)

MiscSection:NewSlider("Walk-Speed", "Sets the LocalPlayers walkspeed value.", 250, 16, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
end)

MiscSection:NewSlider("Jump-Power", "Sets how high the player can jump.", 200, 50, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
end)

MiscSection:NewSlider("Gravity", "Changes the gravity of the game. (LOCAL)", 196.2, 0, function(Value)
    game.Workspace.Gravity = Value
end)

MiscSection:NewButton("Infinite Jump", "Hold space to fly!", function()
    InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
	        if InfiniteJumpEnabled then
	                game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
	        end
        end)
end)

MiscSection:NewButton("Noclip (Click then hold V)", "Clip through walls.", function()
    game:getService("RunService"):BindToRenderStep("",0,function()
        if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
        if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.V) then
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
        end
    end)
end)

--End of code for now
  
