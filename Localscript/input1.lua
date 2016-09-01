local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local char = player.Character
mouse.KeyDown:connect(function (key)
	if key == "0" then
		char.Humanoid.WalkSpeed = 50
	else
		char.Humanoid.WalkSpeed = 20
	end
	if key == "r" then
		x = Instance.new ("Part",workspace)
		x.Shape = "Ball"
		x.BottomSurface = "Smooth"
		x.TopSurface = "Smooth"
		x.Size = Vector3.new (13, 13, 13)
		x.Material = "Neon"
		x.Reflectance = 0.2
		x.Transparency = 0.5
		x.BrickColor = BrickColor.new (1004)
		x.CanCollide = false
		x.Anchored = false
		f = Instance.new ("Fire",x)
		f.Size = 30
		f.Heat = 0
		f.Color = Color3.fromRGB(236, 47, 22)
		r = Instance.new ("BodyVelocity",x)
		r.MaxForce = Vector3.new (math.huge,math.huge,math.huge)
		r.Velocity = char.Torso.CFrame.lookVector*65
		x.CFrame = char.Torso.CFrame*CFrame.new (0,0,-10)
		fd = game.Lighting.Firdmg:clone()
		fd.Parent = x
		game.Debris:AddItem(x,2)
	end
	
end)