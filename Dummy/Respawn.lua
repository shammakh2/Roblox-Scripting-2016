name="Humanoid"

hum=script.Parent:clone()

while true do
	wait(10)
	if script.Parent.Humanoid.Health<1 then
		oid=hum:clone()
		oid.Parent=script.Parent.Parent
		oid:makeJoints()
		script.Parent:remove()
	end
end