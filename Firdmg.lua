function dmg (part)
		if part.Parent:FindFirstChild("Humanoid") then
			script.Disabled = true
		for i = 1,20 do
				part.Parent.Humanoid.Health = part.Parent.Humanoid.Health -0.9
				part.Parent.Torso.CFrame = script.Parent.CFrame
				wait()
			end
		end
	end

script.Parent.Touched:connect(dmg)