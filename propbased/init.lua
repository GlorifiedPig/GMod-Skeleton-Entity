
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( "shared.lua" )

function ENT:Initialize()
	self:SetModel( "models/props_interiors/BathTub01a.mdl" )
	self:PhysicsInit( SOLID_VPHYSICS )
	self:SetMoveType( MOVETYPE_VPHYSICS )
    self:SetSolid( SOLID_VPHYSICS )
    self:SetUseType( SIMPLE_USE )

    local physObj = self:GetPhysicsObject()
	if ( physObj:IsValid() ) then
		physObj:Wake()
	end
end

function ENT:Use( ply )
    
end