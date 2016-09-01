function touch (part)
	if part.Parent:FindFirstChild ("Humanoid") ~= nil then
		script.Disabled = true
		x = Instance.new ("Part")
		x.Parent = part.Parent
		x.BrickColor = BrickColor.new ("Teal")
		x.Shape = ("Ball")
		x.Size = Vector3.new (2,2,2)
		x.TopSurface = "Smooth"
		x.BottomSurface = "Smooth"
		x.Transparency = 0.4
		x.CanCollide = false
		x.Anchored = true
		y = Instance.new ("SpecialMesh")
		y.Parent = x
		y.MeshType = ("Sphere")
		y.Scale = Vector3.new(0,0,0)
	for i = 1,40 do
		y.Scale = y.Scale +Vector3.new(0.1,0.1,0.1)
		x.CFrame = part.Parent.Torso.CFrame
		part.Parent.Humanoid.Health = part.Parent.Humanoid.Health -1
		wait()
		end
	elseif part.Parent:FindFirstChild ("Humanoid") == nil then
		print ("Humanoid does not exist in Arhab")
	end
	wait(2)
	script.Disabled = false
	if x ~= nil then
		x:remove()
	end
	part.Parent.Humanoid.Sit = true
end
script.Parent.Touched:connect(touch)
