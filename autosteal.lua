-- autosteal.lua
local plr = game.Players.LocalPlayer
local char = plr.Character or plr.CharacterAdded:Wait()

local function findClosest()
	local closest = nil
	local shortest = math.huge
	for _, v in pairs(workspace:GetChildren()) do
		if v.Name == "Brainrot" and v:FindFirstChild("Root") and v:FindFirstChild("NameBillboard") then
			local dist = (v.Root.Position - char.HumanoidRootPart.Position).Magnitude
			if dist < shortest then
				shortest = dist
				closest = v
			end
		end
	end
	return closest
end

while task.wait(1) do
	local brainrot = findClosest()
	if brainrot then
		pcall(function()
			char.HumanoidRootPart.CFrame = brainrot.Root.CFrame + Vector3.new(0, 5, 0)
			firetouchinterest(char.HumanoidRootPart, brainrot.Root, 0)
			wait(0.2)
			firetouchinterest(char.HumanoidRootPart, brainrot.Root, 1)
		end)
	end
end
