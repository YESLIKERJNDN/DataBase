local Premium = {
	2654810410,
	
	

}

local Blacklisted = {
	143688102,
	2910453191,
	4208530526,
}

function Emoji()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if v.UserId == 77561039 then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[big hairy daddy 👑] ')
				end
			end
		elseif table.find(Premium, v.UserId) then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐️] '..v.DisplayName)
				end
			end
		elseif table.find(Blacklisted, v.UserId) then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[Blacklisted]')
				end
			end
		end
	end
end

local success, err = pcall(Emoji)

return Premium
