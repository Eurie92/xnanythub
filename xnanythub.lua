if game.PlaceId == 2753915549 then 
    local CurrentVersion = "HIIIII GUYS"

    local Mercury = loadstring(game:HttpGet("https://raw.githubusercontent.com/deeeity/mercury-lib/master/src.lua"))()

    local GUI = Mercury:Create{
        Name = "Mercury",
        Size = UDim2.fromOffset(600, 400),
        Theme = Mercury.Themes.Dark,
        Link = "https://github.com/deeeity/mercury-lib"
    }

    -- local var

    -- FarmTab
    local Tab = GUI:Tab{
        Name = "Auto Farm",
        Icon = "rbxassetid://8569322835"
    }

    Tab:Toggle{
        Name = "auto farm level",
        StartingState = false,
        Description = nil,
        Callback = function(state) 
            
        end
    }
end
