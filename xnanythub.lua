
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


local function copyToClipboard(text)
    if game:GetService("RunService"):IsStudio() then
        print("Copied to clipboard:", text)
    else
        game:GetService("ClipboardService"):Set("String", text)
    end
end

-- Function to show a notification
local function showNotification(title, content, image, time)
    OrionLib:MakeNotification({
        Name = title,
        Content = content,
        Image = image,
        Time = time
    })
end

-- Assuming Main2 is defined in your original code
Main2:AddButton({
    Name = "Banana Hub",
    Callback = function()
        -- Discord link to be copied
        local discordLink = "https://discord.gg/example"

        -- Copy the Discord link to the clipboard
        copyToClipboard(discordLink)

        -- Show notification
        showNotification("Title!", "Notification content... what will it say??", "rbxassetid://4483345998", 5)
    end
})


OrionLib:Init()



