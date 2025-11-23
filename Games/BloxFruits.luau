local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/gsolo3333/Library/refs/heads/main/solo-V5-remake/main.luau"))()

local AFKOptions = {}

local Window = Library:MakeWindow({
  Title = "solo Hub : Blox Fruits",
  SubTitle = "by solo3333",
  SaveFolder = "solbreack | redz lib v5.lua"
})

local Minimizer = Window:NewMinimizer({
  KeyCode = Enum.KeyCode.LeftControl
})

local MobileButton = Minimizer:CreateMobileMinimizer({
  Image = "rbxassetid://104933276010603",
  BackgroundColor3 = Color3.fromRGB(0, 0, 0)
})

Window:Notify({
  Title = "Notification",
  Content = "Solo hub loaded",
  Image = "rbxassetid://10734953451",
  Duration = 5
})

--discord--

local Discord = Window:MakeTab({"Discord", "Info"})

Discord:AddDiscordInvite({
  Name = "solo Hub | Community",
  Description = "Join our discord community to receive information about the next update",
  Banner = "rbxassetid://17382040552",
  Logo = "rbxassetid://104933276010603",
  Invite = "https://discord.gg/7aR7kNVt4g"
})
--end discord

local QuestsTabs = Window:MakeTab({"Quests/Items", "Swords"})
local FruitAndRaid = Window:MakeTab({"Fruit/Raid", "Cherry"})
local MainFarm = Window:MakeTab({"Farm", "Home"})
local Teleport = Window:MakeTab({"Teleport", "Locate"})
local Visual = Window:MakeTab({"Visual", "User"})
local Shop = Window:MakeTab({"Shop", "ShoppingCart"})
local Misc = Window:MakeTab({"Misc", "Settings"})

--teleport--


Tab:AddToggle({
  Name = "Cool Toggle",
  Flag = "toggle_flag"
})

local ToggleValue = Window:GetFlag("toggle_flag") or false
local SpeedEnabled = ToggleValue  -- حالة التوغل باش نعرف واش نفعل السلايدر ولا لا

Misc:AddToggle({
    Name = "Run_Speed",
    Default = ToggleValue,
    Callback = function(Value)
        Window:SetFlag("toggle_flag", Value)
        SpeedEnabled = Value   -- تخزين الحالة

        if Value then
            print("Speed Slider Enabled")
        else
            print("Speed Slider Disabled")
        end
    end
})

Misc:AddSlider({
    Name = "Speed",
    Min = 1,
    Max = 100,
    Increase = 1,
    Default = 16,
    Callback = function(Value)
        -- السلايدر لا يعمل إلا إذا كان SpeedEnabled = true
        if SpeedEnabled == true then
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
        end
    end
})
