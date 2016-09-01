function grip (part)
	script.Parent.Anchored = true
	script.Parent.Parent.lyr.Anchored = true
	script.Parent.Position = part.Position
	script.Parent.Parent.lyr.Position = script.Parent.Position
end
script.Parent.Touchedconnect (grip)

function act ()
	x = Instance.new (Part)
	x.Shape = Ball
	x.BrickColor = BrickColor.new(Really black)
	x.Reflectance = 0.25
	x.Transparency = 0.2
	x.Parent = game.Workspace
	x.Position = script.Parent.Position
	x.Anchored = true
	x.CanCollide = false
	v = Instance.new (SpecialMesh)
	v.Parent = x
	v.MeshType = Sphere
	run()
	game.DebrisAddItem(x,2.3)
end

script.Parent.Parent.Activatedconnect (act)

function run ()
	z = game.Workspace.Part.Mesh
	for i = 1,30 do
		z.Scale = z.Scale +Vector3.new(0.03,0.03,0.03)
		wait(0.01)
	end
end
