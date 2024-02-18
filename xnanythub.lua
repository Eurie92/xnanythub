
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
	Name = "paid list hub",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
local MainSection = Main2:AddSection({
	Name = "Premium paid Hub List"


})

Main2:AddButton({
    Name = "Banana Hub",
    Callback = function()
        -- Discord link to be copied
        local discordLink = "https://discord.gg/example"

        -- Attempt to copy the Discord link to the clipboard
        pcall(function()
            if not game:GetService("RunService"):IsStudio() then
                game:GetService("HttpService"):SetClipboard(discordLink)
                print("Copied to clipboard:", discordLink)
            end
        end)
    end
})

OrionLib:Init()



