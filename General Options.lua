local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()
local Window = Library.CreateLib("General Options  Created by tgf71306#1317", "GrapeTheme")
local Main = Window:NewTab("Main")
local MainSection = Main:NewSection("Main")
local Misc = Window:NewTab("Misc")
local MiscSection = Misc:NewSection("Misc")
local Credit = Window:NewTab("Credits")
local CreditSection = Credit:NewSection("Credits")
MainSection:NewSlider("Walkspeed", "Changes the walkspeed", 300, 16, function(v)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = v
end)
 
MainSection:NewSlider("Jump Power", "Changes the jump Power", 200, 50, function(v)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = v
end)
 
MainSection:NewButton("Delete Tool", "Gives you a tool to delete anything.", function()
    local tool3 = Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)
    tool3.BinType = "Hammer"
    end)
 
MainSection:NewButton("Noclip Hold V", "Noclip through walls and stuff Hold V", function()
end)
 
    game:getService("RunService"):BindToRenderStep("",0,function()
        if not game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid") then return end
        if game:getService("UserInputService"):IsKeyDown(Enum.KeyCode.V) then
        game.Players.LocalPlayer.Character:findFirstChildOfClass("Humanoid"):ChangeState(11)
        end
        end)
 
MainSection:NewButton("Fly Press e to turn on and off", "Allows you to fly, Press e to turn off and on Sometimes Buggy")
 
-- Press E to toggle
 
repeat wait()
until game.Players.LocalPlayer and game.Players.LocalPlayer.Character and game.Players.LocalPlayer.Character:findFirstChild("UpperTorso") and game.Players.LocalPlayer.Character:findFirstChild("Humanoid")
local mouse = game.Players.LocalPlayer:GetMouse()
repeat wait() until mouse
local plr = game.Players.LocalPlayer
local UpperTorso = plr.Character.UpperTorso
local flying = false
local deb = true
local ctrl = {f = 0, b = 0, l = 0, r = 0}
local lastctrl = {f = 0, b = 0, l = 0, r = 0}
local maxspeed = 50
local speed = 0
 
function Fly()
local bg = Instance.new("BodyGyro", UpperTorso)
bg.P = 9e4
bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
bg.cframe = UpperTorso.CFrame
local bv = Instance.new("BodyVelocity", UpperTorso)
bv.velocity = Vector3.new(0,0.1,0)
bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
repeat wait()
plr.Character.Humanoid.PlatformStand = true
if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
speed = speed+.5+(speed/maxspeed)
if speed > maxspeed then
speed = maxspeed
end
elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
speed = speed-1
if speed < 0 then
speed = 0
end
end
if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
else
bv.velocity = Vector3.new(0,0.1,0)
end
bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
until not flying
ctrl = {f = 0, b = 0, l = 0, r = 0}
lastctrl = {f = 0, b = 0, l = 0, r = 0}
speed = 0
bg:Destroy()
bv:Destroy()
plr.Character.Humanoid.PlatformStand = false
end
mouse.KeyDown:connect(function(key)
if key:lower() == "e" then
if flying then flying = false
else
flying = true
Fly()
end
elseif key:lower() == "w" then
ctrl.f = 1
elseif key:lower() == "s" then
ctrl.b = -1
elseif key:lower() == "a" then
ctrl.l = -1
elseif key:lower() == "d" then
ctrl.r = 1
end
end)
mouse.KeyUp:connect(function(key)
if key:lower() == "w" then
ctrl.f = 0
elseif key:lower() == "s" then
ctrl.b = 0
elseif key:lower() == "a" then
ctrl.l = 0
elseif key:lower() == "d" then
ctrl.r = 0
end
end)
Fly()
 
MiscSection:NewButton("Rejoin!", "Rejoins the server on clicking", function()
    local ts = game:GetService("TeleportService")
    local p = game:GetService("Players").LocalPlayer
    ts:Teleport(game.PlaceId, p)
end)
 
MiscSection:NewButton("RTX Graphics", "Makes game look pwertyy", function ()
    loadstring(game:HttpGet("https://schoolsuck.000webhostapp.com/rgebuildrelease.lua"))()
end)
 
MiscSection:NewButton("Infinite Jump (Click)", "Press Space", function()
    InfiniteJumpEnabled = true
    game:GetService("UserInputService").JumpRequest:connect(function()
            if InfiniteJumpEnabled then
                    game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
            end
        end)
end)
 
MiscSection:NewButton("Unamed ESP (Click)", "ESP for almost every game.", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/ic3w0lf22/Unnamed-ESP/master/UnnamedESP.lua"))()
end)
 
MiscSection:NewButton("Aimbot (Hold right Click)", "Aimbot works in most games", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/ygp8Enye"))()
 end)
 
 MiscSection:NewKeybind("Close/Open", "Set keybind", Enum.KeyCode.F, function()
    Library:ToggleUI()
end)
 
 CreditSection:NewButton("Made by tgf71306#1317!", "Click to copy tag!", function()
    setclipboard("tgf71306#1317")
    print("Copied!")
end)
 
CreditSection:NewButton("https://discord.gg/wmuCnApm6s", "Click to copy", function ()
    setclipboard("https://discord.gg/wmuCnApm6s")
    print("Copied")
   end)
 
 
 
 
 
