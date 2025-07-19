-- esp.lua
for _, obj in pairs(workspace:GetChildren()) do
	if obj.Name == "Brainrot" and obj:FindFirstChild("Root") then
		local tag = Instance.new("BillboardGui", obj)
		tag.Size = UDim2.new(0, 100, 0, 40)
		tag.AlwaysOnTop = true
		tag.Adornee = obj.Root

		local txt = Instance.new("TextLabel", tag)
		txt.Size = UDim2.new(1, 0, 1, 0)
		txt.BackgroundTransparency = 1
		txt.Text = "🧠 BRAINROT"
		txt.TextColor3 = Color3.new(1, 1, 0)
		txt.TextStrokeTransparency = 0
	end
end
