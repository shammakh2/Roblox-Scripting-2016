function equ ()
	x = game.Players:GetPlayerFromCharacter(script.Parent.Parent.Parent)
	v = game.Lighting.Cracker:Clone ()
	v.Parent = x.PlayerGui
end

script.Parent.Parent.Equipped:connect(equ)

function unequ ()
	wait(1)
	x = script.Parent.Parent.Parent.Parent.PlayerGui.Cracker
	game.Debris:AddItem(x,0)
end

script.Parent.Parent.Unequipped:connect(unequ)

function acti ()
	x = game.Players:GetPlayerFromCharacter(script.Parent.Parent.Parent)
	b = script.Parent.bool1
	if b.Value == false then
		b.Value = true
		x.PlayerGui.Cracker.cracker.Text = "Activated"
		x.PlayerGui.Cracker.cracker.TextColor3 = Color3.new(244/255,0/255,0/255)
	else 
		b.Value = false
		x.PlayerGui.Cracker.cracker.Text = "Deactivated"
		x.PlayerGui.Cracker.cracker.TextColor3 = Color3.new(78/255,0/255,0/255)
	end
end

script.Parent.Parent.Activated:connect (acti)