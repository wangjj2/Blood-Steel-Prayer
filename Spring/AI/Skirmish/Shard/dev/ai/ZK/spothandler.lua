require "json"

MetalSpotHandler = class(Module)

function MetalSpotHandler:Name()
	return "MetalSpotHandler"
end

function MetalSpotHandler:internalName()
	return "metalspothandler"
end

function MetalSpotHandler:Init()
	self.spots = game.map:GetMetalSpots()
	for i,v in ipairs(self.spots) do
		v.x = v.x+64;
		v.z = v.z+64;
	end
end

function distance(pos1,pos2)
	local xd = pos1.x-pos2.x
	local yd = pos1.z-pos2.z
	dist = math.sqrt(xd*xd + yd*yd)
	return dist
end

function MetalSpotHandler:GameMessage(message)
	local headerLength = string.len("METAL_SPOTS:");
	if (string.sub(message, 1, headerLength) == "METAL_SPOTS:") then
		local content = string.sub(message,headerLength+1);
		local spots = decode(content);
		self.spots={}
		for i,v in pairs(spots) do
			local newpos = api.Position();
			newpos.x = tonumber(v.x);
			newpos.y = tonumber(v.y);
			newpos.z = tonumber(v.z);
			self.spots[i] = newpos;
		end
	end
end

function MetalSpotHandler:ClosestFreeSpot(unittype,position)
	local pos = nil
	local bestDistance = 10000
	
	spotCount = game.map:SpotCount()
	for i,v in ipairs(self.spots) do
		local p = v
		local dist = distance(position,p)
		if dist < bestDistance then
			if game.map:CanBuildHere(unittype,p) then
				bestDistance = dist
				pos = p
			end
		end
	end
	return pos
end
