x = script.Parent

for loop = 1,100 do
	
	x.size = x.size +Vector3.new(1,0,1)
	wait(0.1)
end

function ball (load)
	if load.Transparency < 1 then
		load.Transparency = load.Transparency +0.1
	end
	if load.parent:FindFirstChild("Humanoid") then
		load.Parent.Humanoid.Health = 0
	end
end

x.Touched:connect(ball)