
player = script.Parent.Parent
mouse = player:GetMouse()

function input (key)
	key = key:lower()
		if key == "r" then
			if player.Chakra.Value -9 >= 0 then
			player.Chakra.Value = player.Chakra.Value -9
			x = Instance.new ("Part")
			x.BrickColor = BrickColor.new "Bright red"
			x.Shape = "Ball"
			x.TopSurface = "Smooth"
			x.BottomSurface = "Smooth"
			x.Transparency = 0.3
			fd = game.Lighting.Firdamg:clone()
			fd.Parent = x
			x.Name = player.Name
			x.Parent = Workspace
			x.CanCollide = false
			x.CFrame = player.Character.Torso.CFrame*CFrame.new(0,0,-10)
			x.Size = Vector3.new (11,11,11)
			y = Instance.new ("BodyVelocity",x)
			y.maxForce = Vector3.new (math.huge,math.huge,math.huge)
			y.velocity = player.Character.Torso.CFrame.lookVector*92
			f = Instance.new ("Fire",x)
			f.Size = 13
			f.Heat = 0
			game.Debris:AddItem(x,4)
		elseif player.Chakra.Value -9 < 0 then
			x.Transparency = 1
		end
	end
end
mouse.KeyDown:connect(input)