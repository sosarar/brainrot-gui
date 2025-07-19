-- gui.lua
local OrionLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/shlexware/Orion/main/source"))()

local ParentGui = (gethui and gethui()) or game:GetService("CoreGui")

local Window = OrionLib:MakeWindow({
	Name = "Brainrot Hub",
	HidePremium = false,
	SaveConfig = false,
	IntroText = "Loading...",
	ConfigFolder = "BrainrotHub",
	Parent = ParentGui
})

local Tab = Window:MakeTab({
	Name = "Main",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "Auto Steal Brainrots",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sosarar/brainrot-gui/main/autosteal.lua"))()
	end
})

Tab:AddButton({
	Name = "ESP Brainrots",
	Callback = function()
		loadstring(game:HttpGet("https://raw.githubusercontent.com/sosarar/brainrot-gui/main/esp.lua"))()
	end
})
so like 
