local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/gsolo3333/Library/refs/heads/main/solo-V5-remake/main.luau"))()

local Window = Library:MakeWindow({
  Title = "Solo Hub : Blox Fruits ",
  SubTitle = "by solo3333",
  ScriptFolder = "solo-library-V5"
})

local Minimizer = Window:NewMinimizer({
  KeyCode = Enum.KeyCode.LeftControl
})

local MobileButton = Minimizer:CreateMobileMinimizer({
  Image = "rbxassetid://15298567397",
  BackgroundColor3 = Color3.fromRGB(0, 0, 0)
})

local Tab = Window:MakeTab({
  Title = "Main",
  Icon = "Home"
})

Window:Notify({
  Title = "Notification",
  Content = "Solo hub loded",
  Image = "rbxassetid://0",
  Duration = 5
})


