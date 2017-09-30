--14045BD94

local set = SkillManager:CreateSkillPalette('Staff_Fire')
set.uid = "Elementalist_Staff_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Staff"
set.skills_luacode = {
[5491] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 1.0, 
	 icon = 'Fireball',  
 },
 [5548] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Lava Font',  
 },
 [5679] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Flame Burst',  
 },
 [5680] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Burning Retreat',  
 },
 [5501] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 3.75, 
	 icon = 'Meteor Shower',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5491	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Staff and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Staff_Water')
set.uid = "Elementalist_Staff_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Staff"
set.skills_luacode = {
[5549] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Water Blast',  
 },
 [5550] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.75, 
	 icon = 'Ice Spike',  
 },
 [5681] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.75, 
	 icon = 'Geyser',  
 },
 [5515] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Frozen Ground',  
 },
 [5551] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 1.0, 
	 icon = 'Healing Rain',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5549	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Staff and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Staff_Air')
set.uid = "Elementalist_Staff_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Staff"
set.skills_luacode = {
[5518] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Chain Lightning',  
 },
 [5552] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 1.0, 
	 icon = 'Lightning Surge',  
 },
 [5553] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.25, 
	 icon = 'Gust',  
 },
 [5682] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.25, 
	 icon = 'Windborne Speed',  
 },
 [5671] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Static Field',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5518	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Staff and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Staff_Earth')
set.uid = "Elementalist_Staff_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Staff"
set.skills_luacode = {
[5519] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Stoning',  
 },
 [5528] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 1.25, 
	 icon = 'Eruption',  
 },
 [5685] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Magnetic Aura',  
 },
 [5683] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.25, 
	 icon = 'Unsteady Ground',  
 },
 [5686] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Shock Wave',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5519	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Staff and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Scepter_Fire')
set.uid = "Elementalist_Scepter_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Scepter"
set.skills_luacode = {
[5508] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 1.0, 
	 icon = 'Flamestrike',  
 },
 [5692] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 1.0, 
	 icon = 'Dragons Tooth',  
 },
 [5675] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.25, 
	 icon = 'Phoenix',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5508	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Scepter and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Scepter_Water')
set.uid = "Elementalist_Scepter_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Scepter"
set.skills_luacode = {
[5693] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Ice Shards',  
 },
 [5538] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Shatterstone',  
 },
 [5510] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Water Trident',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5693	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Scepter and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Scepter_Air')
set.uid = "Elementalist_Scepter_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Scepter"
set.skills_luacode = {
[5526] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 3.5, 
	 icon = 'Arc Lightning',  
 },
 [5561] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Lightning Strike',  
 },
 [5694] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Blinding Flash',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5526	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Scepter and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Scepter_Earth')
set.uid = "Elementalist_Scepter_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Scepter"
set.skills_luacode = {
[5500] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 1.5, 
	 icon = 'Stone Shards',  
 },
 [5695] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 1.0, 
	 icon = 'Rock Barrier',  
 },
 [5696] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Dust Devil',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5500	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Scepter and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Fire')
set.uid = "Elementalist_Dagger_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[15718] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Dragons Claw',  
 },
 [5496] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 2.25, 
	 icon = 'Drakes Breath',  
 },
 [5644] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.75, 
	 icon = 'Burning Speed',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 15718	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Water')
set.uid = "Elementalist_Dagger_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[15716] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Vapor Blade',  
 },
 [5537] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 2.25, 
	 icon = 'Cone of Cold',  
 },
 [5487] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.25, 
	 icon = 'Frozen Burst',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 15716	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Air')
set.uid = "Elementalist_Dagger_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[5489] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Lightning Whip',  
 },
 [5646] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.75, 
	 icon = 'Lightning Touch',  
 },
 [5527] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Shocking Aura',
	 instantcast = true,
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5489	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Earth')
set.uid = "Elementalist_Dagger_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[15717] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Impale',  
 },
 [5525] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.75, 
	 icon = 'Ring of Earth',  
 },
 [5559] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Magnetic Grasp',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 15717	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Offhand_Fire')
set.uid = "Elementalist_Dagger_Offhand_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[5691] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.25, 
	 icon = 'Ring of Fire',  
 },
 [5557] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Fire Grab',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5691	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Offhand_Water')
set.uid = "Elementalist_Dagger_Offhand_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[5520] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Frost Aura',	 
 },
 [5558] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Cleansing Wave',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5520	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Offhand_Air')
set.uid = "Elementalist_Dagger_Offhand_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[5529] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Ride the Lightning',  
 },
 [5687] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.5, 
	 icon = 'Updraft',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5529	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Dagger_Offhand_Earth')
set.uid = "Elementalist_Dagger_Offhand_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Dagger"
set.skills_luacode = {
[5690] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Earthquake',  
 },
 [5522] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.5, 
	 icon = 'Churning Earth',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5690	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Dagger and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Focus_Offhand_Fire')
set.uid = "Elementalist_Focus_Offhand_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Focus"
set.skills_luacode = {
[5497] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.75, 
	 icon = 'Flamewall',  
 },
 [5678] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.25, 
	 icon = 'Fire Shield',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5497	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Focus and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Focus_Offhand_Water')
set.uid = "Elementalist_Focus_Offhand_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Focus"
set.skills_luacode = {
[5556] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Freezing Gust',  
 },
 [5490] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Comet',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5556	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Focus and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Focus_Offhand_Air')
set.uid = "Elementalist_Focus_Offhand_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Focus"
set.skills_luacode = {
[5530] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Swirling Winds',  
 },
 [5562] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Gale',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5530	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Focus and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Focus_Offhand_Earth')
set.uid = "Elementalist_Focus_Offhand_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Focus"
set.skills_luacode = {
[5555] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.25, 
	 icon = 'Magnetic Wave',  
 },
 [5521] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.25, 
	 icon = 'Obsidian Flesh',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 5555	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Focus and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Warhorn_Offhand_Fire')
set.uid = "Elementalist_Warhorn_Offhand_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Warhorn"
set.skills_luacode = {
[29548] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.75, 
	 icon = 'Heat Sync',  
 },
 [29533] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Wildfire',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 29548	and context.player.transformid == 1 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Warhorn and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Warhorn_Offhand_Water')
set.uid = "Elementalist_Warhorn_Offhand_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Warhorn"
set.skills_luacode = {
[30864] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.25, 
	 icon = 'Tidal Surge',  
 },
 [30446] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.5, 
	 icon = 'Water Globe',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 30864	and context.player.transformid == 2 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Warhorn and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Warhorn_Offhand_Air')
set.uid = "Elementalist_Warhorn_Offhand_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Warhorn"
set.skills_luacode = {
[30008] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.0, 
	 icon = 'Cyclone',  
 },
 [30795] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.5, 
	 icon = 'Lightning Orb',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 30008	and context.player.transformid == 3 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Warhorn and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Warhorn_Offhand_Earth')
set.uid = "Elementalist_Warhorn_Offhand_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Warhorn"
set.skills_luacode = {
[29453] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.75, 
	 icon = 'Sand Squall',  
 },
 [30336] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.75, 
	 icon = 'Dust Storm',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_4].id == 29453	and context.player.transformid == 4 and not self.temp.context.player.isweaver
end
function set:CanActivate(context)
	return not self.temp.context.player.isweaver and context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.offhand == GW2.WEAPONTYPE.Warhorn and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Sword_Fire')
set.uid = "Elementalist_Sword_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Sword"
set.skills_luacode = {
[39964] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Fire Strike',  
 },
 [40326] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Fire Swipe',  
	 parent = 39964,
 },
 [43657] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Searing Slash', 
	parent = 40326,
 },
 [45313] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.75, 
	 icon = 'Flame Uprising',  
 },
 [46447] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.75, 
	 icon = 'Lava Skin',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 45313 and context.player.transformid == 1
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Sword and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Sword_Water')
set.uid = "Elementalist_Sword_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Sword"
set.skills_luacode = {
[41052] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Seiche',  
 },
 [45983] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Clapotis',  
	 parent = 41052,
 },
 [43199] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Breaking Wave',  
	 parent = 45983,
 },
 [44405] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 1.0, 
	 icon = 'Riptide',  
 },
 [42271] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.75, 
	 icon = 'Twin Strike',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 44405	and context.player.transformid == 2 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Sword and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Sword_Air')
set.uid = "Elementalist_Sword_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Sword"
set.skills_luacode = {
[44681] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Charged Strike',  
 },
 [45259] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Polaric Slash',  
	 parent = 44681,
 },
 [45216] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.75, 
	 icon = 'Call Lightning',  
	 parent = 45259,
 },
 [44998] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Polaric Leap',  
 },
 [42867] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.75, 
	 icon = 'Shearing Edge',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 44998	and context.player.transformid == 3 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Sword and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Sword_Earth')
set.uid = "Elementalist_Sword_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Sword"
set.skills_luacode = {
[43616] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Crystal Slash',  
 },
 [43080] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Crystalline Strike', 
	 parent = 43616,
 },
 [46024] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Crystalline Sunder',  
	 parent = 46024,
 },
 [40709] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Earthen Vortex',  
 },
 [46295] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Gale Strike',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 40709	and context.player.transformid == 4 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.NotInWater and context.player.mainhand == GW2.WEAPONTYPE.Sword and context.player.weaponset == 4 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Trident_Fire')
set.uid = "Elementalist_Trident_Fire"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Trident"
set.skills_luacode = {
[5598] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Magma Orb',  
 },
 [5597] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Boil',  
 },
 [5566] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Steam',  
 },
 [5599] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 0.5, 
	 icon = 'Lava Chains',  
 },
 [5600] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 1.0, 
	 icon = 'Heat Wave',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 5658 and context.player.transformid == 1
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.Diving and context.player.aquatic == GW2.WEAPONTYPE.Trident and context.player.weaponset == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492 and context.skillbar[GW2.SKILLBARSLOT.Slot_13].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_13] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_13].id == 5492) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_13) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Trident_Water')
set.uid = "Elementalist_Trident_Water"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Trident"
set.skills_luacode = {
[5604] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Water Missile',  
 },
 [5605] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Ice Globe',  
 },
 [5606] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Ice Wall',  
 },
 [5748] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.25, 
	 icon = 'Undercurrent',  
 },
 [5607] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 1.75, 
	 icon = 'Tidal Wave',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5604	and context.player.transformid == 2 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.Diving and context.player.aquatic == GW2.WEAPONTYPE.Trident and context.player.weaponset == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493 and context.skillbar[GW2.SKILLBARSLOT.Slot_14].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_14] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_14].id == 5493) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_14) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Trident_Air')
set.uid = "Elementalist_Trident_Air"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Trident"
set.skills_luacode = {
[5656] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Forked Lightning',  
 },
 [5655] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Electrocute',  
 },
 [5652] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Air Pocket',  
 },
 [5648] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.0, 
	 icon = 'Air Bubble',  
 },
 [5650] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 0.5, 
	 icon = 'Lightning Cage',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 5655	and context.player.transformid == 3 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.Diving and context.player.aquatic == GW2.WEAPONTYPE.Trident and context.player.weaponset == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494 and context.skillbar[GW2.SKILLBARSLOT.Slot_15].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_15] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_15].id == 5494) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_15) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )


local set = SkillManager:CreateSkillPalette('Trident_Earth')
set.uid = "Elementalist_Trident_Earth"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Trident"
set.skills_luacode = {
[5657] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Rock Blade',  
 },
 [5658] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.5, 
	 icon = 'Rock Spray',  
 },
 [5662] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 0.5, 
	 icon = 'Magnetic Current',  
 },
 [5659] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.0, 
	 icon = 'Rock Anchor',  
 },
 [5661] = { 
	 slot = GW2.SKILLBARSLOT.Slot_5, 
	 activationtime = 1.25, 
	 icon = 'Murky Water',  
 },
}
function set:IsActive(context)
	return context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2]~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_2].id == 5658	and context.player.transformid == 4 
end
function set:CanActivate(context)
	return context.player.swimming == GW2.SWIMSTATE.Diving and context.player.aquatic == GW2.WEAPONTYPE.Trident and context.player.weaponset == 0 and context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495 and context.skillbar[GW2.SKILLBARSLOT.Slot_16].cancast
end
function set:Activate(context)
	if ( context.skillbar~=nil ) then
		if (context.skillbar[GW2.SKILLBARSLOT.Slot_16] ~= nil and context.skillbar[GW2.SKILLBARSLOT.Slot_16].id == 5495) then Player:CastSpell(GW2.SKILLBARSLOT.Slot_16) end
	end
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )



local downed = SkillManager:CreateSkillPalette('Downed')
downed.uid = "Elementalist_Downed"
downed.profession = GW2.CHARCLASS.Elementalist
downed.icon = "Bandage"
downed.skills_luacode = {
[5504] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Discharge Lightning',  
 },
 [5564] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.25, 
	 icon = 'Vapor Form',  
 },
 [5505] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime =3.5, 
	 icon = 'Grasping Earth',  
 },
 [1175] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.5, 
	 icon = 'Bandage',  
 },
}
function downed:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5504)	
end
function downed:CanActivate(context)
	return false
end
function downed:Activate(context)
end
function downed:Deactivate(context)	
	return false
end
SkillManager:AddSkillPalette( downed )


local drowning = SkillManager:CreateSkillPalette('Drowning')
drowning.uid = "Elementalist_Drowning"
drowning.profession = GW2.CHARCLASS.Elementalist
drowning.icon = "Vengeance"
drowning.skills_luacode = {
[5608] = { 
	 slot = GW2.SKILLBARSLOT.Slot_1, 
	 activationtime = 0.5, 
	 icon = 'Water Fist',  
 },
 [5609] = { 
	 slot = GW2.SKILLBARSLOT.Slot_2, 
	 activationtime = 0.75, 
	 icon = 'Stone Kick',  
 },
 [5610] = { 
	 slot = GW2.SKILLBARSLOT.Slot_3, 
	 activationtime = 3.0, 
	 icon = 'Steam Vent',  
 },
 [1175] = { 
	 slot = GW2.SKILLBARSLOT.Slot_4, 
	 activationtime = 1.0 ,
	 icon = 'Bandage',  
 },
}
function drowning:IsActive(context)
	return (context.skillbar~=nil  and context.skillbar[GW2.SKILLBARSLOT.Slot_1]~=nil and context.skillbar[GW2.SKILLBARSLOT.Slot_1].id == 5608)	
end
function drowning:CanActivate(context)
	return false
end
function drowning:Activate(context)
end
function drowning:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( drowning )



-- ALL the skills which do not belong to a set
local set = SkillManager:CreateSkillPalette('Elementalist')
set.uid = "Elementalist"
set.profession = GW2.CHARCLASS.Elementalist
set.icon = "Elementalist"
set.skills_luacode = {
[5503] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 1.0, 
	 icon = 'Signet of Restoration',  
 },
[21656] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 0.75, 
	 icon = 'Arcane Brilliance',  
 },
[5507] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 2.75, 
	 icon = 'Ether Renewal',  
 },
 [34609] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 1.0, 
	 icon = 'Glyph of Elemental Harmony',  
 }, 
  [5539] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.0, 
	 icon = 'Arcane Blast', 
	 instantcast = true,
 },
 [5635] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.0, 
	 icon = 'Arcane Power',  
	 instantcast = true,
 },
 [5641] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.0, 
	 icon = 'Arcane Shield',  
	 instantcast = true,
 },
 [25489] = { 
	 slot = GW2.SKILLBARSLOT.Slot_10, 
	 activationtime = 1.25, 
	 icon = 'Glyph of Elementals',  
 },
  [5638] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.0, 
	 icon = 'Arcane Wave', 
		instantcast = true,
 },
 [5639] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.0, 
	 icon = 'Armor of Earth',
	 instantcast = true,
},
 [5536] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.0, 
	 icon = 'Lightning Flash',
	 instantcast = true,
 },
 [5516] = { 
	 slot = GW2.SKILLBARSLOT.Slot_10, 
	 activationtime = 1.0, 
	 icon = 'Conjure Fiery Greatsword',  
 },
  [5554] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.0, 
	 icon = 'Mist Form',
	 instantcast = true,
 },
 [5546] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.75, 
	 icon = 'Conjure Earth Shield',  
 },
 [5540] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.25, 
	 icon = 'Conjure Flame Axe',  
 },
 [5534] = { 
	 slot = GW2.SKILLBARSLOT.Slot_10, 
	 activationtime = 1.0, 
	 icon = 'Tornado',  
 },
  [5567] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.25, 
	 icon = 'Conjure Frost Bow',  
 },
 [5624] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.75, 
	 icon = 'Conjure Lightning Hammer',  
 },
 [34714] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.0, 
	 icon = 'Glyph of Elemental Power',
	 instantcast = true,
 },
  [25497] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 1.25, 
	 icon = 'Glyph of Lesser Elementals',  
 },
 [5761] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 3.25, 
	 icon = 'Renewal of Earth',  
 },
 [5738] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 1.25, 
	 icon = 'Sandstorm',  
 },
  [5572] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.0, 
	 icon = 'Signet of Air',
	 instantcast = true,
 },
 [5571] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.5, 
	 icon = 'Signet of Earth',  
 },
 [5542] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.5, 
	 icon = 'Signet of Fire',  
 },
  [5570] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.5, 
	 icon = 'Signet of Water',  
 },
 [29535] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 1.5, 
	 icon = 'Wash the Pain Away!',  
 },
 [30662] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.0, 
	 icon = 'Feel the Burn!', 
	 instantcast = true,
 },
 [30047] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.0, 
	 icon = '"Eye of the Storm!"',
	 instantcast = true,
 },
 [30432] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.25, 
	 icon = '"Aftershock!"',  
 },
 [29968] = { 
	 slot = GW2.SKILLBARSLOT.Slot_10, 
	 activationtime = 0.25, 
	 icon = '"Rebound!"',  
 },
  [29948] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.25, 
	 icon = '"Flash-Freeze!"',  
 },
  [29618] = { 
	 slot = GW2.SKILLBARSLOT.Slot_16, 
	 activationtime = 4.0, 
	 icon = 'Overload Earth',  
 },
  [29719] = { 
	 slot = GW2.SKILLBARSLOT.Slot_15, 
	 activationtime = 4.0, 
	 icon = 'Overload Air',  
 },
  [29415] = { 
	 slot = GW2.SKILLBARSLOT.Slot_14, 
	 activationtime = 4.0, 
	 icon = 'Overload Water',  
 },
 [29706] = { 
	 slot = GW2.SKILLBARSLOT.Slot_13, 
	 activationtime = 4.0, 
	 icon = 'Overload Fire',  
 },
 [44239] = { 
	 slot = GW2.SKILLBARSLOT.Slot_6, 
	 activationtime = 0.75, 
	 icon = 'Aquatic Stance',
	 nounderwater = true,
 },
 [40183] = { 
	 slot = GW2.SKILLBARSLOT.Slot_7, 
	 activationtime = 0.5, 
	 icon = 'Primordial Stance',
	 instantcast = true,
 },
 [44926] = { 
	 slot = GW2.SKILLBARSLOT.Slot_8, 
	 activationtime = 0.5, 
	 icon = 'Stone Resonance',
	 instantcast = true,
 },
 [44612] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 0.5, 
	 icon = 'Unravel', 
	 instantcast = true,
 },
 [43638] = { 
	 slot = GW2.SKILLBARSLOT.Slot_10, 
	 activationtime = 0.75, 
	 icon = 'Weave Self',  
 },
  [45746] = { 
	 slot = GW2.SKILLBARSLOT.Slot_9, 
	 activationtime = 1.0, 
	 icon = 'Twist of Fate',
	nounderwater = true,
 },
 
}
function set:IsActive(context)
	return context.player.transformid >= 1 and context.player.transformid <= 4
end
function set:CanActivate(context)
	return false
end
function set:Activate(context)
end
function set:Deactivate(context)
	return false
end
SkillManager:AddSkillPalette( set )

