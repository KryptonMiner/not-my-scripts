    -- // ORIGINAL SCRIPT BY INF YIELD FE (https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source)
    local speaker = game:GetService("Players").LocalPlayer
	local Human = speaker.Character:FindFirstChildWhichIsA("Humanoid")
	for _, v in ipairs(workspace:GetChildren()) do
		if speaker.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
			Human:EquipTool(v)
		end
	end
	if grabtoolsFunc then grabtoolsFunc:Disconnect() end
	grabtoolsFunc = workspace.ChildAdded:Connect(function(v)
		if speaker.Character and v:IsA("BackpackItem") and v:FindFirstChild("Handle") then
			speaker.Character:WaitForChild("Humanoid"):EquipTool(v)
		end
	end)
	warn('Loaded')
