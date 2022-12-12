local Rand = math.Rand
local IsValid = IsValid
local CurTime = CurTime
local util_BlastDamage = util.BlastDamage
local ents_Create = ents.Create

table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_pschreck = {
        model = "models/lambdaplayers/dayofdefeat/w_pschreck.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Panzerschreck",
        holdtype = "rpg",
        killicon = "lambdaplayers/killicons/icon_dod_pschreck",
        bonemerge = true,
        keepdistance = 800,
        attackrange = 5000,
        offpos = Vector( 13, -1, 2 ),   
        offang = Angle( 10, 180, 0 ),

        clip = 1,

        OnEquip = function( lambda, wepent )
            wepent.CurrentRocket = NULL
            lambda:Hook( "Think", "LambdaPlayer_OnlyOneRPGRocket", function()
                if !IsValid( wepent.CurrentRocket ) then return end
                lambda.l_WeaponUseCooldown = CurTime() + 2.0
            end, false )
        end,

        OnUnequip = function( lambda, wepent )
            wepent.CurrentRocket = nil
            lambda:RemoveHook( "Think", "LambdaPlayer_OnlyOneRPGRocket" )
        end,

        callback = function( self, wepent, target )
            if self.l_Clip <= 0 then self:ReloadWeapon() return end

            local rocket = ents_Create( "rpg_missile" )
            if !IsValid( rocket ) then return end

            self.l_WeaponUseCooldown = CurTime() + Rand( 3.0, 6.0 )

            wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/rocket1.mp3" )

            self:HandleMuzzleFlash( 7 )

            self:RemoveGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG )
            self:AddGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_RPG )

            local spawnAttach = wepent:GetAttachment( wepent:LookupAttachment( "muzzle" ) )
            local targetAng = ( target:WorldSpaceCenter() - wepent:GetPos() ):Angle()
            rocket:SetPos( spawnAttach.Pos + targetAng:Forward() * 40 + targetAng:Up() * 15 )
            rocket:SetAngles( ( target:WorldSpaceCenter() - rocket:GetPos() ):Angle() )
            rocket:SetOwner( self )
            rocket:SetCollisionGroup( COLLISION_GROUP_DEBRIS ) -- SetOwner should prevent collision but it doesn't
            rocket:Spawn()

            self:SimpleTimer( 0.4, function() -- Grace period to avoid collision with the shooter
                if !IsValid( rocket ) then return end
                rocket:SetCollisionGroup( COLLISION_GROUP_PROJECTILE )
            end)

            rocket:CallOnRemove( "LambdaPlayer_RPGRocket_" .. rocket:EntIndex(), function()
                rocket:StopSound( "weapons/rpg/rocket1.wav" ) -- Trying to prevent source being dumb
                util_BlastDamage( ( IsValid( wepent ) and wepent or rocket ), ( IsValid( self ) and self or rocket ), rocket:GetPos(), 250, 150 )
            end)

            wepent.CurrentRocket = rocket

            return true
        end,

        islethal = true,
    }

})