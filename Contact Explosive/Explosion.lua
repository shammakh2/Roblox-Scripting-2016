function zic ()
	wait(1)
	if script.Parent.bool1.Value == true then
		script.Disabled = true
		x = Instance.new ("Explosion")
		x.Parent = script.Parent
		x.BlastPressure = 3000
		x.BlastRadius = 19
		x.Position = script.Parent.Position
		game.Debris:AddItem(script.Parent.Parent,2)
		script.Disabled = false
	end
end

script.Parent.Touched:connect (zic)