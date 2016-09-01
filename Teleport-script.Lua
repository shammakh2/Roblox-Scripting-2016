part = script.Parent

-- Teleport specific user to a certain place
function tele (pat)
	if pat.Parent:FindFirstChild("Humanoid")and pat.Parent.Name ~= "shammakh3" then
	 pat.Parent.Torso.CFrame = CFrame.new (Vector3.new(15,4,40))
	end
end

part.Touched:connect (tele)