function Tab:AddDiscordInvite(Configs)
	local Title = Configs[1] or Configs.Name or Configs.Title or "Discord"
	local Desc = Configs.Desc or Configs.Description or ""
	local Logo = Configs[2] or Configs.Logo or ""
	local Invite = Configs[3] or Configs.Invite or ""
	
	local InviteHolder = Create("Frame", Container, {
	  Size = UDim2.new(1, 0, 0, 80),
	  Name = "Option",
	  BackgroundTransparency = 1
	})
	
	local InviteLabel = Create("TextLabel", InviteHolder, {
	  Size = UDim2.new(1, 0, 0, 15),
	  Position = UDim2.new(0, 5),
	  TextColor3 = Color3.fromRGB(40, 150, 255),
	  Font = Enum.Font.GothamBold,
	  TextXAlignment = "Left",
	  BackgroundTransparency = 1,
	  TextSize = 10,
	  Text = Invite
	})
	
	local FrameHolder = InsertTheme(Create("Frame", InviteHolder, {
	  Size = UDim2.new(1, 0, 0, 65),
	  AnchorPoint = Vector2.new(0, 1),
	  Position = UDim2.new(0, 0, 1),
	  BackgroundColor3 = Theme["Color Hub 2"]
	}), "Frame")Make("Corner", FrameHolder)
	
	local ImageLabel = Create("ImageLabel", FrameHolder, {
	  Size = UDim2.new(0, 30, 0, 30),
	  Position = UDim2.new(0, 7, 0, 7),
	  Image = Logo,
	  BackgroundTransparency = 1
	})Make("Corner", ImageLabel, UDim.new(0, 4))Make("Stroke", ImageLabel)
	
	local LTitle = InsertTheme(Create("TextLabel", FrameHolder, {
	  Size = UDim2.new(1, -52, 0, 15),
	  Position = UDim2.new(0, 44, 0, 7),
	  Font = Enum.Font.GothamBold,
	  TextColor3 = Theme["Color Text"],
	  TextXAlignment = "Left",
	  BackgroundTransparency = 1,
	  TextSize = 10,
	  Text = Title
	}), "Text")
	
	local LDesc = InsertTheme(Create("TextLabel", FrameHolder, {
	  Size = UDim2.new(1, -52, 0, 0),
	  Position = UDim2.new(0, 44, 0, 22),
	  TextWrapped = "Y",
	  AutomaticSize = "Y",
	  Font = Enum.Font.Gotham,
	  TextColor3 = Theme["Color Dark Text"],
	  TextXAlignment = "Left",
	  BackgroundTransparency = 1,
	  TextSize = 8,
	  Text = Desc
	}), "DarkText")
	
	local JoinButton = Create("TextButton", FrameHolder, {
	  Size = UDim2.new(1, -14, 0, 16),
	  AnchorPoint = Vector2.new(0.5, 1),
	  Position = UDim2.new(0.5, 0, 1, -7),
	  Text = "Join",
	  Font = Enum.Font.GothamBold,
	  TextSize = 12,
	  TextColor3 = Color3.fromRGB(220, 220, 220),
	  BackgroundColor3 = Color3.fromRGB(50, 150, 50)
	})Make("Corner", JoinButton, UDim.new(0, 5))
	
	local ClickDelay
	JoinButton.Activated:Connect(function()
	  setclipboard(Invite)
	  if ClickDelay then return end
	  
	  ClickDelay = true
	  SetProps(JoinButton, {
		Text = "Copied to Clipboard",
		BackgroundColor3 = Color3.fromRGB(100, 100, 100),
		TextColor3 = Color3.fromRGB(150, 150, 150)
	  })task.wait(5)
	  SetProps(JoinButton, {
		Text = "Join",
		BackgroundColor3 = Color3.fromRGB(50, 150, 50),
		TextColor3 = Color3.fromRGB(220, 220, 220)
	  })ClickDelay = false
	end)
	
	local DiscordInvite = {}
	function DiscordInvite:Destroy()
	  InviteHolder:Destroy()
	end
	function DiscordInvite:Visible(Bool)
	  if Bool == nil then InviteHolder.Visible = not InviteHolder.Visible return end
	  InviteHolder.Visible = Bool
	end
	return DiscordInvite
  end
  return Tab
end



local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

local Window = OrionLib:MakeWindow({Name = "Xnanyt All hub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local Main = Window:MakeTab({
	Name = "Hub list",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local MainSection = Main:AddSection({
	Name = "Free Hub List"
})

Main:AddButton({
	Name = "Hoho Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/acsu123/HOHO_H/main/Loading_UI"))()
		wait(5)
		OrionLib:Destroy()
  	end    
})


Main:AddButton({
	Name = "Mtriet V2 Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/Minhtriettt/Free-Script/main/Main-V2.lua"))()
		wait(5)
		OrionLib:Destroy()
  	end    
})


Main:AddButton({
	Name = "Redz Hub",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/REDzHUB/BloxFruits/main/redz9999"))()
  	end    
})


local Main2 = Window:MakeTab({
	Name = "pai list hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

local main2 = Window:MakeTab({"Discord", "Info"})
Main2:AddDiscordInvite({
  Name = "xnanyt Hub | Community",
  Description = "Join our discord community to receive information about the next update",
  Logo = "rbxassetid://15298567397",
  Invite = "https://discord.gg/7aR7kNVt4g"
})

OrionLib:Init()



