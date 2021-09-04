--Use at your own risk
local ezlib = loadstring(game:HttpGet("https://raw.githubusercontent.com/debug420/Ez-Hub/dev/Modules/EzLib.lua", true))()

local mainGUI = ezlib.create("Millionaire Empire Tycoon INF Money");
local main = mainGUI.newTab("Main");
local misc = mainGUI.newTab("Misc");
local credit = mainGUI.newTab("Credits");
local AutoFarm = false
mainGUI.openTab(main);
game.StarterGui:SetCore("SendNotification", {
    Title = "Millionaire Tycoon"; 
    Text = "Created by tgf71306"; 
    Duration = 5;
    Button1 = "Discord (Click to Copy)";  
    setclipboard("https://discord.gg/wmuCnApm6s");
})
main.newTitle("Main");
main.newDiv();

    main.newTextbox("Inf Money", "Type Amount then collect", function(Num)
        local args = {
            [1] = Num
        
        }
        game:GetService("ReplicatedStorage").updateCollector:FireServer(unpack(args))
        print(Num);
end)

misc.newTitle("Misc Options");
misc.newDiv();

misc.newSlider("WalkSpeed", 16, 16, 200, function(state)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = state
print(state);
end)
misc.newSlider("Jump-Power", 50, 50, 250, function(state)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = state
    print(state)
end)

misc.newButton("Destroy Menu", function()
game.CoreGui.EzExc:destroy()
print("Yeeted")
end)

local AntiAfk = false
misc.newCheckbox("AntiAfk", false, function(state)
if AntiAfk == true then
            local bb=game:service'VirtualUser'
            bb:CaptureController()
            bb:ClickButton2(Vector2.new())
        print("end");
        end
    end)

    credit.newTitle("Credits");
    credit.newDiv();
    credit.newButton("Created by tgf71306", function()

print("end");
end)

credit.newButton("Discord Link: https://discord.gg/wmuCnApm6s", function()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Copied Discord Link"; 
        Text = "https://discord.gg/wmuCnApm6s"; 
        Duration = 3;
        Button1 = "";  
        setclipboard("");
    })
    setclipboard("https://discord.gg/wmuCnApm6s")
    print("Copied!");
end)
