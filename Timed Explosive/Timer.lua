function eq ()
	x = game.Lighting.cd:clone ()
	v = game.Players:GetPlayerFromCharacter(script.Parent.Parent.Parent)
	x.Parent = v.PlayerGui
end

script.Parent.Parent.Equipped:connect (eq)

function uneq ()
	script.Disabled = true
	d = script.Parent.Parent.Parent.Parent.PlayerGui.cd
	game.Debris:AddItem(d,0)
	script.Disabled = false
end

script.Parent.Parent.Unequipped:connect (uneq)

function act ()
	script.Disabled = true
	c = game.Players:GetPlayerFromCharacter(script.Parent.Parent.Parent)
	m = c.PlayerGui.cd.TextBox
	m.Text = "10"
	wait(0.9)
	m.Text = "9"
	wait(0.9)
	m.Text = "8"
	wait(0.9)
	m.Text = "7"
	wait(0.9)
	m.Text = "6"
	wait(0.9)                                   -- inefficient code, alot of room for improvement.
	m.Text = "5"
	wait(0.9)
	m.Text = "4"
	wait(0.9)
	m.Text = "3"
	wait(0.9)
	m.Text = "2"
	wait(0.9)
	m.Text = "1"
	wait(0.9)
	m.Text = "0"
	f = Instance.new("Explosion")
	f.Parent = script.Parent
	f.Position = script.Parent.Position
	f.BlastRadius = 20
	game.Debris:AddItem (c.PlayerGui.cd,0)
	game.Debris:AddItem (game.Workspace.TimerBim,1)
	script.Disabled = false
end

script.Parent.Parent.Activated:connect (act)