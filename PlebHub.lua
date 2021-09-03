local DiscordLib = loadstring(game:HttpGet"https://raw.githubusercontent.com/dawid-scripts/UI-Libs/main/discord%20lib.txt")()

local win = DiscordLib:Window("Pleb Hub Created By: tgf71306")
local serv = win:Server("Home", "")
local DB = serv:Channel("DashBoard")
local Scripts = serv:Channel("Scripts")
local Misc = serv:Channel("Misc Options")
local Player = serv:Channel("Player Options")
local Credits = serv:Channel("Credits")
local InfiniteJump = false

--Everything for DashBoard
DB:Label("Welcome to PlebHub!!!")
DB:Seperator()
game.StarterGui:SetCore("SendNotification", {
  Title = "PLEB HUB"; 
  Text = "Created by tgf71306"; 
  Duration = 5;
  Button1 = "Discord (Click to Copy)";  
  setclipboard("https://discord.gg/wmuCnApm6s");
})
DB:Dropdown("Current Scripts",{"General Options","Pet Simulator X","Arsenal","StrongMan Simulator","Mega Noob Simulator", "Coin Hero Simulator", "Pressure Wash Sim"}, function(bool)
  print(bool)
  end)
  
  
  --Scripts Code
  Scripts:Label("Scripts")
  Scripts:Seperator()
  Scripts:Button("General Options", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/nyn0rNQ6"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "General Options Loaded"; 
        Text = "Created by tgf71306"; 
        Button1 = "Discord (Click To Copy!)";  
        setclipboard("https://discord.gg/wmuCnApm6s");
    })
    wait(1.0)
    game.CoreGui.Discord:destroy()
  end)
    
    Scripts:Seperator()

  Scripts:Button("Pet Simulator X", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/95HthyJq"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Pet Simulator X Loaded"; 
        Text = "Not Created By Me"; 
        Button1 = "Discord (Click To Copy!)";  
        setclipboard("https://discord.gg/wmuCnApm6s");
    })
    wait(1.0)
    game.CoreGui.Discord:destroy()
  end)
    
    Scripts:Seperator()

  Scripts:Button("Arsenal", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/tgf71306/Main/main/Arsenal.lua"))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Arsenal Loaded"; 
        Text = "Created by tgf71306"; 
        Button1 = "Discord (Click To Copy!)";  
        setclipboard("https://discord.gg/wmuCnApm6s");
    })
    wait(1.0)
    game.CoreGui.Discord:destroy()
  end)
    
    Scripts:Seperator()

  Scripts:Button("StrongMan Simulator", function()
    loadstring(game:HttpGet(('https://raw.githubusercontent.com/naypramx/STRONGMANSIM/main/NAYPRAMX'), true))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Strongman Loaded"; 
        Text = "Not Created By Me"; 
        Button1 = "Discord (Click To Copy!)";  
        setclipboard("https://discord.gg/wmuCnApm6s");
    })
    game.CoreGui.Discord:destroy()
  end)
    
    Scripts:Seperator()

  Scripts:Button("Mega Noob Simulator", function()
    loadstring(game:HttpGet("https://pastebin.com/NbDiNfq4"))()
    game.StarterGui:SetCore("SendNotification", {
      Title = "Mega Noob Simulator Loaded"; 
      Text = "Created By: tgf71306"; 
      Button1 = "Discord (Click To Copy!)";  
      setclipboard("https://discord.gg/wmuCnApm6s");
  })
  game.CoreGui.Discord:destroy()
  end)
    
    Scripts:Seperator()

    Scripts:Button("Coin Hero Simulator", function()
      script=loadstring(game:HttpGet(('ei9rQPRe/war/moc.nibetsap//:sptth'):reverse(), true))()
    game.StarterGui:SetCore("SendNotification", {
        Title = "Coin Hero Sim Loaded"; 
        Text = "Not Created By Me"; 
        Button1 = "Discord (Click To Copy!)";  
        setclipboard("https://discord.gg/wmuCnApm6s");
    })
  game.CoreGui.Discord:destroy()
  end)
  
  Scripts:Seperator()
  
  Scripts:Button("Pressure Wash Sim", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/GabSa4Yn"))()
    game.StarterGui:SetCore("SendNotification", {
      Title = "Pressure Wash Sim Loaded"; 
      Text = "Created By: tgf71306"; 
      Button1 = "Discord (Click To Copy!)";  
      setclipboard("https://discord.gg/wmuCnApm6s");
  })
  game.CoreGui.Discord:destroy()
  end)

  
  --Misc Options
  Misc:Label("Misc Options")
  Misc:Seperator()

  Misc:Button("Rejoin The Game", function()
    DiscordLib:Notification("Notification", "Rejoining Game In 3 Seconds", "Okay!")
    wait(3.0)
    local ts = game:GetService("TeleportService")

    local p = game:GetService("Players").LocalPlayer

    ts:Teleport(game.PlaceId, p)
end)

  Misc:Seperator()
  
  Misc:Button("RTX Graphics", function()
    loadstring(game:HttpGet("https://schoolsuck.000webhostapp.com/rgebuildrelease.lua"))()
    DiscordLib:Notification("Notification", "Rtx Graphics Loaded", "Okay!")
  end)
  

  Misc:Seperator()

  Misc:Button("Fly Press E To Use (Click This To Enable)", function()
    loadstring(game:HttpGet("https://pastebin.com/raw/YVQXCvnP"))()
end)
  
  Misc:Seperator()

local sldr = Misc:Slider("WalkSpeed", 16, 200, 0, function(Value)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    print(Value)
    end)
    Misc:Button("Reset", function()
    sldr:Change(16)
    end)
    
    Misc:Seperator()
   
    local sldr = Misc:Slider("Jump Power", 50, 255, 0, function(Value)
      game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
      print(Value)
      end)
      
      Misc:Button("Reset", function()
      sldr:Change(50)
      end)
      
    
         --Player Options
         Player:Label("Player Options")
         Player:Seperator()

         Player:Button("Infinite Jump", function()
          InfiniteJumpEnabled = true
            game:GetService("UserInputService").JumpRequest:connect(function()
                if InfiniteJumpEnabled then
                        game:GetService"Players".LocalPlayer.Character:FindFirstChildOfClass'Humanoid':ChangeState("Jumping")
                end
               end)
            end)
            
            Player:Seperator()
        
            Player:Button("Reset Player (Works for most games)", function()
            game.Players.LocalPlayer.Character.Humanoid.Health = 0
         end)
  
  
  
  
  
         --Credits
         Credits:Button("Created by tgf71306", function()
         DiscordLib:Notification("Notification", "Yes its made by me what about it?", "Ow Harsh")
         end)
  
         Credits:Seperator()
  
         Credits:Button("Discord Link: https://discord.gg/wmuCnApm6s", function()
         DiscordLib:Notification("Notification", "Copied Discord Link: https://discord.gg/wmuCnApm6s", "Okay!")
         setclipboard("https://discord.gg/wmuCnApm6s")
         end)





        --Page 2 Code
        local serv = win:Server("Future", "http://www.roblox.com/asset/?id=6031075938") 
         local Plans = serv:Channel("Plans")
         local Games = serv:Channel("Future Games")
         
         --Plans Code
         Plans:Label("Future of this hub!")
         Plans:Seperator()
         Plans:Label("I plan to continuously update PlebHub and add many")
         Plans:Label("more games and Feature's. Updates wont be daily but ill")
         Plans:Label("try my best to make them constant")
         
         
         
         --Games Code
         Games:Label("Future Games")
         Games:Seperator()
         
         Games:Button("Lumber Tycoon")
         Games:Button("Pressure Wash Sim (Added)")
         Games:Button("I need suggestions")

