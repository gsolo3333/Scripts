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


Misc:AddToggle({
  Name = "Speed",
  Flag = "speed_flag"
})

local SpeedToggleValue = Window:GetFlag("toggle_flag") or false

Tab:AddToggle({
  Name = "Speed",
  Default = SpeedToggleValue,
  Callback = function(Value)
    Window:SetFlag("speed_flag", Value)
  end
})
