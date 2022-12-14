local random = math.random
local CurTime = CurTime

table.Merge( _LAMBDAPLAYERSWEAPONS, {

    dod_spade = {
        model = "models/lambdaplayers/dayofdefeat/w_spade.mdl",
        origin = "Day of Defeat: Source",
        prettyname = "Entrenchment Spade",
        holdtype = "melee",
        killicon = "lambdaplayers/killicons/icon_dod_spade",
        ismelee = true,
        bonemerge = true,
        keepdistance = 10,
        attackrange = 50,
        offpos = Vector( -2.5, -2, 0 ),

        OnEquip = function( lambda, wepent )
            wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/spade_deploy.mp3" )
        end,

        callback = function( self, wepent, target )
            self.l_WeaponUseCooldown = CurTime() + 0.5

            wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/spade_miss_"..random(2)..".mp3", 80, 100, 1, CHAN_WEAPON )
            self:RemoveGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE )
            self:AddGesture( ACT_HL2MP_GESTURE_RANGE_ATTACK_MELEE )
            
            self:SimpleTimer( 0.25, function()
                if !IsValid( target ) or self:GetRangeSquaredTo( target ) > ( 75 * 75 ) then return end

                local dmg = random( 12, 30 )
                local dmginfo = DamageInfo()
                dmginfo:SetDamage( dmg )
                dmginfo:SetAttacker( self )
                dmginfo:SetInflictor( wepent )
                dmginfo:SetDamageType( DMG_CLUB )
                dmginfo:SetDamageForce( ( target:WorldSpaceCenter() - self:WorldSpaceCenter() ):GetNormalized() * dmg )
                target:TakeDamageInfo( dmginfo )

                wepent:EmitSound( "lambdaplayers/weapons/dayofdefeat/spade_hit_"..random(3)..".mp3", 80, 100, 1, CHAN_WEAPON )
            end )

            return true
        end,

        islethal = true
    }

})