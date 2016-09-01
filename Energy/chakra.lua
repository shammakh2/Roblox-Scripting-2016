wait(1)
function chakde ()
	for i = 1,100 do
	    script.Parent.Mesh.Scale = script.Parent.Mesh.Scale +Vector3.new(0.02,0.02,0.02)
		wait()
	end
	wait(1)
	s = script.Parent
	player = game.Players:GetPlayerFromCharacter(script.Parent.Parent.Parent)
	if player.Chakra.Value -20 >= 0 then
			script.Parent.Transparency = 0.5
			script.Parent.Parent.Part.Transparency = 0.5
			script.Parent.hurt.Disabled = false
			player.Chakra.Value = player.Chakra.Value -20
			wait()
	elseif player.Chakra.Value -20 < 0 then
		script.Parent.hurt.Disabled = true
	    for i = 1,100 do
			script.Parent.Transparency = script.Parent.Transparency +0.01
			script.Parent.Parent.Part.Transparency = script.Parent.Parent.Part.Transparency +0.01
		    wait()
		end
	end
end

script.Parent.Parent.Equipped:connect(chakde)